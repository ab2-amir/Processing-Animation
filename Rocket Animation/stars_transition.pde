class Starr {
  // Star coordinates en 3D
  float x;
  float y;
  float z;
  
  Starr() {
    x = random(-5000, 5000);
    y = random(-5000, 5000);
    z = random(0, 2000);
  }
  
  void update() {
    z-=10;        // Move star closer to viewport
    if (z <= 0.0) // Reset star if it passes viewport
      reset();
  }
  
  void reset() {
    // Mettre stars loins
    x = random(-5000, 5000);
    y = random(-5000, 5000);
    z = 2000.0;
  }

  void draw() {
    // Project star only viewport
    float offsetX = 100.0*(x/z);
    float offsetY = 100.0*(y/z);
    float scaleZ = 0.0001*(2000.0-z);

    // Afficher les étoiles
    pushMatrix();
    translate(offsetX, offsetY);
    scale(scaleZ);
    fill(255);
    ellipse(0,0,20,20);
    popMatrix();
  }
}
