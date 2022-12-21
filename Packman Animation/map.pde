class mapp{
  float x;
  float y;

  mapp(){
    x = 50;
    y = 50;
    
  }
  
  void drawMap(){
    noStroke();
    //fill(200);
    
    //Bordure exterieurs
    stroke(0,0, 250);
    strokeWeight(8);
    line(x, y, 450, 50);
    line(x, y, x, 130);
    line(x, 130, 100, 130);
    line(100, 130, 100, 170);
    line(x, 170, 100, 170);
    line(x, 220, 100, 220);
    line(100, 220, 100, 270);
    line(x, 270, 100, 270);
    line(x, 270, x, 370);
    line(x, 370, 450, 370);
    line(450, y, 450, 125);
    line(400, 130, 450, 130);
    line(400, 130, 400, 165);
    line(400, 170, 450, 170);
    line(400, 220, 450, 220);
    line(400, 220, 400, 270);
    line(400, 270, 450, 270);
    line(450, 270, 450, 370);

    //Obstacle interieurs
    stroke(0, 0, 250);    
    strokeWeight(5);
    noFill();
    //obstacle 1
    rect((500/2)-5, y, 10, 50);
    //les 2 obstacle du haut
    rect(90, 80, 40, 20);
    rect(170, 80, 40, 20);
    rect(285, 80, 40, 20);
    rect(365, 80, 40, 20);
    //obstacle en T à droite
    /*stroke(200);
    strokeWeight(8);
    fill(200);
    line(365, 130, 365, 180);*/
    
    //obstacle du centre
    stroke(0, 0, 250);    
    strokeWeight(5);
    noFill();
    rect(225, 180, 50, 30);
    
    //obstacle | |
    strokeWeight(8);
    fill(200);
    line(135, 220, 135, 270);
    line(365, 220, 365, 270);
    //obstacle __ en bas gauche
    line(135, 305, 210, 305);
    //obstacle __ en bas droite
    line(290, 305, 365, 305);
    
    //obstacle L en bas gauche
    line(100, 305, 100, 340);
    line(100, 340, 175, 340);

    //obstacle L en bas droite
    line(400, 305, 400, 340);
    line(325, 340, 400, 340);
    
    //obstacle L en haut gauche
    line(135, 130, 135, 170);
    line(135, 130, 200, 130);
    
    //obstacle L en haut droite
    line(365, 130, 365, 170);
    line(300, 130, 365, 130);
    
    //obstacle + en bas
    line(250, 240, 250, 305);
    line(175, 270, 325, 270);
    
    //obstacle __ en bas seul
    line(215, 340, 285, 340);
    
    //obstacle T gauche
    line(170, 165, 170, 235);
    line(170, 200, 185, 200);
    
    //obstacle T droite
    line(325, 165, 325, 235);
    line(310, 200, 325, 200);
    
    //obstacle | en haut milieu
    line(250, 130, 250, 150);
  }

}
