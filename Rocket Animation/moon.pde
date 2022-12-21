//La lune avec appel aux taches de la lune
tache[] taches = new tache[1];

class moon{
 float x;
 float y;
 float size;
 moon(){
   x = 200;
   y = 500;
   size = 350;
 }
 
 void display(){
   for(int i = 0; i < taches.length; i++){
   taches[i] = new tache(); 
  }
   noStroke();
   
   fill(220);
   ellipse(x, y, size, size);
   taches[0].display();

 }
}
