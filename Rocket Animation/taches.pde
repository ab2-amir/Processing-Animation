//Taches de la lune
class tache{
 float x;
 float y;
 float size;
 tache(){
   x = 70;
   y = 500;
   size = 350;
 }
 
 void display(){
   noStroke();
   
   fill(120);
   ellipse(300, 550, 70, 50);
   
   fill(120);
   ellipse(250, 400, 50, 40);
   
   fill(120);
   ellipse(130, 550, 35, 30);
   
   fill(120);
   ellipse(60, 470, 30, 80);

 }
}
