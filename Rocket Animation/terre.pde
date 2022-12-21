class terre{
 float x;
 float y;
 float size;
 terre(){
   x = 0;
   y = 0;
 }
 
 //Affichage de la base de décolage
 void display(){
   PImage img;
   img = loadImage("base44.jpg");
   image(img, x, y, 800, 600);
 }
 
 // Affichage du ciel entre la terre et l'espace
  void display2(){
   PImage img;
   img = loadImage("ciel.jpg");
   image(img, x, y, 800, 600);
 }
}
