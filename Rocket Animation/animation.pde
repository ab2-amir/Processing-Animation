star[] stars = new star[100];
Starr[] Starrs = new Starr[400];
moon[] moons = new moon[1];
rocket[] rockets = new rocket[1];
flag[] flags = new flag[1];
terre[] terres = new terre[1];

int startTime;
boolean first = true;
boolean init = true;
int cpt = 0;

void setup(){
  size(800, 600);
  for(int i = 0; i < stars.length; i++){
   stars[i] = new star(); 
  }
  
  for(int i = 0; i < Starrs.length; i++){
   Starrs[i] = new Starr(); 
  }
  
  for(int i = 0; i < moons.length; i++){
   moons[i] = new moon(); 
  }
  
  for(int i = 0; i < rockets.length; i++){
   rockets[i] = new rocket(); 
  }
  
  for(int i = 0; i < flags.length; i++){
   flags[i] = new flag(); 
  }
  
  for(int i = 0; i < terres.length; i++){
   terres[i] = new terre(); 
  }
  
  smooth();

  startTime = millis();
}


void draw(){
   if (rockets[0].y_decolage <= 270 && rockets[0].y_decolage > -100 && first){
     //Afficher la base de décollage
     terres[0].display(); 
     if (millis() - startTime < 10000){//10s de compte à rebour
       //Afficher la fuser à l'état static (sans flamme)
       rockets[0].displayDecolage2();
     }else{
        //Décoller aprèe le compte à reboure (avec flamme)
        rockets[0].displayDecolage();
        rockets[0].moveUpTerre(); 
     }
   }else{
     //Durant le décolage
     first = false;
     //Plan entre le ciel et l'espace
     if(rockets[0].y_decolage > -120){
       terres[0].display2();
       if (init){//réinitialiser la position de la rocket en bas du frame
         rockets[0].y_decolage = 510;
         init = false;
       }
       rockets[0].displayDecolage();
       rockets[0].moveUpTerre(); 
     }else{//Transition des étoiles qui se déplacent dans l'espace
        cpt += 1;
        if (cpt<200){
         background(0);
        // Draw all stars in center de l'ecran
        translate(0.5*width, 0.5*height);
        
        // Update and draw all stars
        for (int i=0; i<Starrs.length; i++) {
          Starrs[i].update();
          Starrs[i].draw();
        }
       }else{       //Final scene
       background(0);
       for(int i = 0; i < stars.length; i++){
        stars[i].display(); 
      }
      
      //Afficher la lune
      for(int i = 0; i < moons.length; i++){
       moons[i].display(); 
      }
      
      //Atterissage sur la lune
      for(int i = 0; i < rockets.length; i++){
        if (rockets[i].y < 230){
          rockets[i].display();
        }else{
          //Eteindre les flammes (atterrissage)
          rockets[i].display2();
        }
       rockets[i].moveDown();
      }

      //Planter le drapeeau de l'Algérie sur la lune pour la première fois!!
      if (millis() - startTime > 33000){
        for(int i = 0; i < flags.length; i++){
          flags[0].display(); 
          rockets[0].moveUpSpace(); 
        }
      }
      
     //Décolage depuis la lune
     if(millis() - startTime > 36000){
        rockets[0].moveUpSpace(); 
     }
    }
   }
  }
  //saveFrame("animationFrame/img_####.png");
}
