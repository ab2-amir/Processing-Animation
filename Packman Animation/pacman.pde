class pacman{
  float x;
  float y;
  boolean eat=false, bool1=true, bool2=true, bool3=true, bool4=true, bool5=true, bool6=true, bool7=true, bool8=true, bool9=true, bool10=true, bool11=true, bool12=true, bool13=true;

 pacman(){
   x = 110;
   y = 195;
 }
  
  void drawPacmanR(){
    noStroke();
    fill(255, 255, 0);
    ellipse(x, y, 20, 20);
    fill(0, 0, 0);
    triangle(x, y, x+15, y-10, x+15, y+10);
  }
  
   void drawPacmanL(){
    noStroke();
    fill(255, 255, 0);
    ellipse(x, y, 20, 20);
    fill(0, 0, 0);
    triangle(x, y, x-15, y-10, x-15, y+10);
  }
  
   void drawPacmanUp(){
    noStroke();
    fill(255, 255, 0);
    ellipse(x, y, 20, 20);
    fill(0, 0, 0);
    triangle(x, y, x-10, y-15, x+10, y-15);
  }
  
   void drawPacmanD(){
    noStroke();
    fill(255, 255, 0);
    ellipse(x, y, 20, 20);
    fill(0, 0, 0);
    triangle(x, y, x-10, y+15, x+10, y+15);
  }
  
  void moveUp(){
   //print("moveUp\n");
   //if(y > 150){
     y = y - 1; 
   //}
  }
  
  void moveR(){
    //print("moveR\n");
     x = x + 1; 
  }  
  
  void moveL(){
    //print("moveR\n");
     x = x - 1; 
  }  
  
  void moveD(){
     //print("moveD\n");
     y = y + 1; 
  }
  
  void movePacman(){
     //if(x==270 && y==290){
     //   eat = true;
     //}
     //if(eat){
     //   noStroke();
     //   fill(0, 0, 0);
     //   ellipse(270, 290, 15.5, 15.5);
     //}
    if(pacmans[0].x < 151 && bool1){
      pacmans[0].drawPacmanR();
      pacmans[0].moveR();
    }else{
      bool1 = false;
      if(pacmans[0].y > 150 && bool2){
        pacmans[0].drawPacmanUp();
        pacmans[0].moveUp();
      }
      else{
        bool2 = false;
        if(pacmans[0].x < 230 && bool3){      
          pacmans[0].drawPacmanR();
          pacmans[0].moveR();
        }else{
          bool3 = false;
          if(pacmans[0].y < 165 && bool4){
            pacmans[0].drawPacmanD();
            pacmans[0].moveD();
          }else{
              bool4 = false;
              if(pacmans[0].x < 300 && bool5){
                pacmans[0].drawPacmanR();
                pacmans[0].moveR();
          }else{
              bool5 = false;
              if(pacmans[0].y > 150 && bool6){
                pacmans[0].drawPacmanUp();
                pacmans[0].moveUp();
              }else{
                bool6 = false;
                if(pacmans[0].x < 343 && bool7){  
                  pacmans[0].drawPacmanR();
                  pacmans[0].moveR();
                }else{
                     bool7 = false;
                    if(pacmans[0].y < 288 && bool8){
                      pacmans[0].drawPacmanD();
                      pacmans[0].moveD();
                    }else{
                      bool8 = false;
                      if(pacmans[0].x > 270 && bool9){  
                        pacmans[0].drawPacmanL();
                        pacmans[0].moveL();
                      }else{
                         bool9 = false;
                        if(pacmans[0].y < 323 && bool10){
                          pacmans[0].drawPacmanD();
                          pacmans[0].moveD();
                        }else{
                          bool10 = false;
                          if(pacmans[0].x < 383 && bool11){  
                            pacmans[0].drawPacmanR();
                            pacmans[0].moveR();
                          }else{
                            bool11 = false;
                            if(pacmans[0].y > 200 && bool12){
                              pacmans[0].drawPacmanUp();
                              pacmans[0].moveUp();
                            }
                          }
                        }
                      }
                    }
                }
              }
          }
        }
       }
      }
     }
  }
  
}
