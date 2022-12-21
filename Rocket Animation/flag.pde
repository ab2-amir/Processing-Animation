//Le drapeau de l'Algérie
class flag{
 float x;
 float y;
 float size;
 
 flag(){
   x = 300;
   y = 300;
   size = 50;
 }
 
 void display(){
   noStroke();
   fill(100);
   rect(x, y, 5,65);
   PImage img;
   img = loadImage("flag.png");
   img.resize(50, 30);
   image(img,x,y);
 }
}
