Snow [] snows;
PImage house;
PImage tree;
PImage santa;
Moon moon= new Moon();
PFont font; 
double xdir=-1500;
double v=8;


void setup() {
  size(600, 600);
  background(#1E1F5D);

  snows=new Snow[600];
  for (int i=0; i<snows.length; i++) {
    snows[i]= new bigsnow(2);
  }
 
  house= loadImage("house.png");
    tree= loadImage("tree.png");
   santa=loadImage("santa.png");
}

void draw() {
  background(#1E1F5D);
   moon.drawMoon();
   fill(255);

  image(house,150,250);
   tree.resize(130,200);
  image(tree,30,350);
   font = createFont("Gabriola-48.vlw",48);
 textFont(font);
 fill(255,0,0);
  text("Merry Christmas!", 50,120);
    santa.resize(750,500);
  image(santa,(int)xdir,5);
  xdir=xdir+v;
  if(xdir>=25 && xdir<=100)
  v=3;
  if(xdir==100)
  v=8;
  if(xdir==700)
  xdir=-2000;
  for (int i=0; i<snows.length; i++) {


    snows[i].move();
    snows[i].show();
    if (keyPressed) {
      if (key=='1') {
        for (int j=0; j<snows.length; j++) {
          snows[j]= new bigsnow(2);
        }
 
      }
      if (key=='2') {
        for (int j=0; j<snows.length; j++) {
          snows[j]= new bigsnow(5);
        }
      }
      if (key=='3') {
        for (int j=0; j<snows.length; j++) {
          snows[j]= new bigsnow(8);
        }

       
      }
    }
  }
   fill(255);
  rect(0,550,600,60);

}