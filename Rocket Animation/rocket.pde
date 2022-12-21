class rocket{
 float x;
 float y;
 float x_decolage;
 float y_decolage;
 float size;
 float speed;
 boolean first = true;
 
 rocket(){
   x = 180;
   y = 0;
   x_decolage = 397;
   y_decolage = 270;
   size = 90;
   speed = 2.0;
 }
 //Afficher la rocket lors du décolage donc avec les flammes
  void displayDecolage(){
   //Sorti des flammes
   noStroke();
   fill(255);
   triangle(x_decolage+(size/4), y_decolage+(size/2)+10, x_decolage+5, y_decolage+size+10, x_decolage+(size/2)-5, y_decolage+size+10);
   
   //Flammes
   stroke(255, 100, 0);
   fill(255,200,0);
   triangle(x_decolage+(size/4), y_decolage+size+45, x_decolage+5+7, y_decolage+size+10, x_decolage+(size/2)-5-7, y_decolage+size+10);

   //Les ailes
   noStroke();
   fill(255, 0, 0);
   triangle(x_decolage+(size/4), y_decolage+(size/3), x_decolage-25, y_decolage+size, x_decolage+(size/2)+25, y_decolage+size);
   
   //Main rocket
   noStroke();
   fill(255);
   rect(x_decolage, y_decolage, size/2, size, 5);
   
   //Top of thr rocket
   noStroke();
   fill(255, 0, 0);
   triangle(x_decolage+(size/4), y_decolage-50, x_decolage, y_decolage, x_decolage+(size/2), y_decolage);
   
   //Window
   stroke(0, 50, 180);
   fill(0, 150, 255);
   ellipse(x_decolage+(size/4), y_decolage+(size/4), 20, 20);
   
   PFont f;
   f = createFont("Algerian", 12, true) ;
   textFont(f);
   fill(0, 150, 0);
   text("DzFlay", x_decolage, y_decolage+(size/2)+10);
 }
 
 
  //Afficher la rocket juste avant le décolage donc sans flammes
 void displayDecolage2(){
   //Sorti des flammes
   noStroke();
   fill(255);
   triangle(x_decolage+(size/4), y_decolage+(size/2)+10, x_decolage+5, y_decolage+size+10, x_decolage+(size/2)-5, y_decolage+size+10);
   
   //Les ailes
   noStroke();
   fill(255, 0, 0);
   triangle(x_decolage+(size/4), y_decolage+(size/3), x_decolage-25, y_decolage+size, x_decolage+(size/2)+25, y_decolage+size);
   
   //Main rocket
   noStroke();
   fill(255);
   rect(x_decolage, y_decolage, size/2, size, 5);
   
   //Top of thr rocket
   noStroke();
   fill(255, 0, 0);
   triangle(x_decolage+(size/4), y_decolage-50, x_decolage, y_decolage, x_decolage+(size/2), y_decolage);
   
   //Window
   stroke(0, 50, 180);
   fill(0, 150, 255);
   ellipse(x_decolage+(size/4), y_decolage+(size/4), 20, 20);
   
   PFont f;
   f = createFont("Algerian", 12, true) ;
   textFont(f);
   fill(0, 150, 0);
   text("DzFlay", x_decolage, y_decolage+(size/2)+10);
 }
 
 //Affichage de la rocket lors de l'atterissage sur la surface de la lune (avec flammes)
 void display(){
   //Sorti des flammes
   noStroke();
   fill(255);
   triangle(x+(size/4), y+(size/2)+10, x+5, y+size+10, x+(size/2)-5, y+size+10);
   
   //Flammes
   stroke(255, 100, 0);
   fill(255,200,0);
   triangle(x+(size/4), y+size+45, x+5+7, y+size+10, x+(size/2)-5-7, y+size+10);

   //Les ailes
   noStroke();
   fill(255, 0, 0);
   triangle(x+(size/4), y+(size/3), x-25, y+size, x+(size/2)+25, y+size);
   
   //Main rocket
   noStroke();
   fill(255);
   rect(x, y, size/2, size, 5);
   
   //Top of thr rocket
   noStroke();
   fill(255, 0, 0);
   triangle(x+(size/4), y-50, x, y, x+(size/2), y);
   
   //Window
   stroke(0, 50, 180);
   fill(0, 150, 255);
   ellipse(x+(size/4), y+(size/4), 20, 20);
   
   PFont f;
   f = createFont("Algerian", 12, true) ;
   textFont(f);
   fill(0, 150, 0);
   text("DzFlay", x, y+(size/2)+10);
 }
 
  //Affichage de la rocket sur la surface de la lune (sans flammes)
 void display2(){
   //Sorti des flammes
   noStroke();
   fill(255);
   triangle(x+(size/4), y+(size/2)+10, x+5, y+size+10, x+(size/2)-5, y+size+10);
   
   //Les ailes
   noStroke();
   fill(255, 0, 0);
   triangle(x+(size/4), y+(size/3), x-25, y+size, x+(size/2)+25, y+size);
   
   //Main rocket
   noStroke();
   fill(255);
   rect(x, y, size/2, size, 5);
   
   //Top of thr rocket
   noStroke();
   fill(255, 0, 0);
   triangle(x+(size/4), y-50, x, y, x+(size/2), y);
   
   //Window
   stroke(0, 50, 180);
   fill(0, 150, 255);
   ellipse(x+(size/4), y+(size/4), 20, 20);
   
   PFont f;
   f = createFont("Algerian", 12, true) ;
   textFont(f);
   fill(0, 150, 0);
   text("DzFlay", x, y+(size/2)+10);
 }
 
 
 void moveDown(){  
   //Atterissage de la rocket jusqu'a la surfface de la lune
   if(y < 230){
     y = y + speed/2;
   }
  }
  
 void moveUpTerre(){   
   //décolage depuis la base
   if(y_decolage > -150){
     y_decolage = y_decolage - speed;
     //print("moveUpTerre y\n", y_decolage);
     speed = speed + 0.02;
   }
  }
  
 void moveUpSpace(){   
   //décolage depuis la lune
   if(y > -150){
     y = y - speed;
     //print("moveUpSpace y\n", y);
   }
  }
  
}
