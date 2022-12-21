class enemy{
  float x;
  float y, x2, y2, x3, y3;
  boolean first=true, bool1=true, bool2=true, bool3=true, bool4=true, bool5=true, bool7=true, bool8=true, bool9=true, bool10=true, bool11=true, bool12=true, bool13=true, bool20=true, bool21=true;
  boolean boolA=true, boolB=true, boolC=true, boolD=true;
  boolean end = false;
  
 enemy(){
   x = 118;
   y = 250;
   x2 = 250;
   y2 = 355;
   x3 = 280;
   y3 = 66;
 }
 
  void moveUp(){
     y = y - 1; 
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
  
 void drawEnemy1(){
  noStroke();
  fill(255, 0, 0);
  ellipse(x, y, 20, 20);
  
  fill(0, 0, 255);
  ellipse(x-4, y-4, 5, 3);//oeil 1
  ellipse(x+4, y-4, 5, 3);//oeil 2
  rect(x-4, y+2, 8, 2);//bouche
 }
 
  void drawEnemy2(){
    noStroke();
    fill(255, 0, 0);
    ellipse(x2, y2, 17, 17);
    
    fill(0, 0, 255);
    ellipse(x2-4, y2-4, 5, 3);//oeil 1
    ellipse(x2+4, y2-4, 5, 3);//oeil 2
    rect(x2-4, y2+2, 8, 2);//bouche
 }
 
  void drawEnemy3(){
    noStroke();
    fill(255, 0, 0);
    ellipse(x3, y3, 20, 20);
    
    fill(0, 0, 255);
    ellipse(x3-4, y3-4, 5, 3);//oeil 1
    ellipse(x3+4, y3-4, 5, 3);//oeil 2
    rect(x3-4, y3+2, 8, 2);//bouche
 }
 void moveEnemy1(){
  if(y > 200 && bool1){
    drawEnemy1();
    moveUp();
  }else{
    bool1 = false;
    if(x < 153 && bool2){   
      drawEnemy1();
      moveR();
    }else{
        bool2 = false;
        if(y > 150 && bool7){
          drawEnemy1();
          moveUp();
        }else{
          bool7 = false;
          if(x < 230 && bool8){  
            drawEnemy1();
            moveR();
          }else{
            bool8 = false;
            if(y < 165 && bool20){
              drawEnemy1();
              moveD();
            }else{
                bool20 = false;
                if(x < 300 && bool21){
                  drawEnemy1();
                  moveR();
                }else{
                   bool21 = false;
                  if(y > 150 && bool9){
                    drawEnemy1();
                    moveUp();
                  }else{
                    bool9 = false;
                    if(x < 343 && bool10){  
                      drawEnemy1();
                      moveR();
                    }else{
                       bool10 = false;
                      if(y < 288 && bool11){
                        drawEnemy1();
                        moveD();
                      }else{
                        bool11 = false;
                        if(x > 270 && bool12){  
                          drawEnemy1();
                          moveL();
                        }else{
                          bool12 = false;
                          if(y < 323 && bool13){
                            drawEnemy1();
                            moveD();
                          }else{
                            bool13 = false;
                            if(x < 383 && bool3){  
                              drawEnemy1();
                              moveR();
                            }else{
                              bool3 = false;
                              if(y > 200 && bool4){
                                drawEnemy1();
                                moveUp();
                              }else{
                                end = true;
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
 
 void moveEnemy2(){
   drawEnemy2();
   if(x2 > 70 && first){
    x2 = x2 - 1; 
   }else{
       first = false;
       x2 = x2 + 1;
       if(x2==420){
         first = true;
       }
   }
 }
 
 void moveEnemy3(){
   drawEnemy3();
   if(x3 < 425 && boolA){
     x3 = x3 + 1;
   }else{
     boolA = false;
    if(y3 < 115 && boolB){
       y3 = y3 + 1; 
    }else{
      boolB=false;
      if(x3 > 150 && boolC){
        x3 = x3 - 1;
      }else{
        boolC = false;
        if(x3 < 385 && boolD){
          x3 = x3 + 1;
        }else{
         boolD = false;
         if(y3 < 200){
          y3 = y3 + 1; 
         }
        }
      }
    }
   }
 }
}//class
