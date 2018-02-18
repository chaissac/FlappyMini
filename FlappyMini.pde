PVector[]p=new PVector[3];
int e, s, i, f=25, c=10, n=20, t=-1;
float y, z;
void setup() {
  size(500, 800);
  textAlign(CENTER);
  while (i<3)p[i]=new PVector(c+(i++)*20, 0, 0);
  strokeWeight(.4);
}
void draw() {
  clear();
  scale(10);
  textSize(3);
  stroke(t); 
  if (e==1) {
    ellipse(f, y+=z+=.05, 2, 2);
    for (PVector q : p) {
      if (y>80||(abs(q.x-f)<1)&&(abs(y-q.y)>c)) e=2;
      line(q.x-=.3, 0, q.x, q.y-c);
      line(q.x, q.y+c, q.x, 80);
      if (q.x<0)q.set(q.x+60, random(70), 0);
      s+=(q.x<f&&q.z==0)?(q.z=1):0;
    }
  }
  if (mousePressed) if (e==1) z=t; 
  else for (PVector q : p)q.set(q.x+60, random(70), (e=1)*(s=0)*(y=40));
  fill(t, f);
  rect((e==1)?2:c, (e==1)?2:c, (e==1)?c:30, (e==1)?5:n);
  fill(t);
  text(((e==1)?s+"":((e==0)?"FlappyBall\n\n(click)":("Paf !\n\nScore "+s))), (e==1)?7:f, (e==1)?6:16);
}