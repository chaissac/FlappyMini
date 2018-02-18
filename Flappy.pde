PVector[] p=new PVector[3];
int e, s, i, f=25, c=10, n=20, t=-1;
float x=f, y, z;
void setup() {
  size(500, 800);
  textAlign(CENTER);
  while(i<3)p[i]=new PVector(c+(i++)*20, 0, 0);
}
void draw() {
  clear();
  scale(10);
  strokeWeight(.4);
  stroke(t);
  if (e==1) {
    y+=z;
    ellipse(x, y, 1.5, 1.5);
    z+=0.04;
    for (PVector q : p) {
      if ((y>80 || y<0)||(abs(q.x-f)<1)&&(abs(y-q.y)>c))e=2;
      line(q.x-=.3, 0, q.x, q.y-c);
      line(q.x, q.y+c, q.x, 80);
      if (q.x<0)q.set(q.x+60, random(70), 0);
      if (q.x<f&&q.z==0) {
        q.z=1;
        s++;
      }
    }
  }
  fill(t,f);
  stroke(t);
  textSize(3);
  if (e==1) {
    rect(2, 2, c, 5);
    fill(t);
    text(s, 7, 6);
  } else {
    rect(c, c, 30, n);
    fill(t);
    text((e==0)?"Flappy Ball\n\n(click)":("Aïe...\n\nscore "+s), f, 16);
  }
}
void mousePressed() {
  z=t;
  if (e!=1) {
    e=1;
    s=0;
    y=40;
    for (PVector q : p)q.set(q.x+55, random(70), 0);
  }
}