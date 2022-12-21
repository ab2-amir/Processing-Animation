//Les étoiles dans l'espace
class star{
  float x;
  float y;
  float size;
  
 star(){
   x = random(width);
   y = random(height);
   size = random(1,5);
 }
  
  void display(){
   noStroke();
   fill(255);
   ellipse(x, y, size, size);
  }
}
