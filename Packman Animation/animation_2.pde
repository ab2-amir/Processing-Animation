mapp[] maps = new mapp[1];
pacman[] pacmans = new pacman[1];
enemy[] enemys = new enemy[1];
appel[] appels = new appel[10];

int time, score = 0;
boolean eat1=false, eat2=false, eat3=false;
int cpt = 0;

void setup(){
  size(500, 600);
  for(int i = 0; i < maps.length; i++){
   maps[i] = new mapp(); 
  }
  
  for(int i = 0; i < pacmans.length; i++){
   pacmans[i] = new pacman(); 
  }
  
  for(int i = 0; i < enemys.length; i++){
   enemys[i] = new enemy(); 
  }
  
  for(int i = 0; i < appels.length; i++){
   appels[i] = new appel(); 
  }
}


void draw(){
  if(enemys[0].end == false){
    time = time + 1;
    background(0);
     PFont f;
     f = createFont("Arial Bold", 15, true) ;
     textFont(f);
     fill(255, 255, 255);
     time = millis()/1000;
     text("Time: "+time+" s", 50, 30);
     text("Score: "+score, 220, 30);
     text("High Score: 180", 350, 30);
     
    PImage img;
    img = loadImage("arcade.png");
    img.resize(350, 150);
    image(img,75,400);
  
    maps[0].drawMap();
    
    if(pacmans[0].x==250 && pacmans[0].y==165){
      eat1 = true;
      score = score + 10;
    }
    if(!eat1){
      appels[0].drawAppel(250, 165);
    }
    
    if(pacmans[0].x==270 && pacmans[0].y==290){
      eat2 = true;
      score = score + 10;
    }
    if(!eat2){
      appels[1].drawAppel(270, 290);
    }
    
    if(pacmans[0].x==375 && pacmans[0].y==323){
      eat3 = true;
      score = score + 10;
    }
  
    if(!eat3){
      appels[2].drawAppel(380, 320);
    }
    
    appels[3].drawAppel(70, 70);
    appels[4].drawAppel(205, 200);
    appels[5].drawAppel(70, 290);
    appels[6].drawAppel(345, 90);
  
    enemys[0].moveEnemy1();
    enemys[0].moveEnemy2();
    enemys[0].moveEnemy3();
    pacmans[0].movePacman();
  }else{
    PImage img2;
    img2 = loadImage("gameover.jpg");
    img2.resize(500, 600);
    image(img2,0,0);
  }
  
  //je sauvgarde la moitier des frames car si non l'animation sera trop lente
  //cpt++;
  //if(cpt % 2 != 0){
  //   saveFrame("animation2Frame/img_####.png");
  //}
}
