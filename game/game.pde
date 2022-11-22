import processing.sound.*;
int x= 275;
int y=8;
int t=0;
PImage arriba, abajo, derecha, izquierda, lab, langosta;
SoundFile file, fil3;
boolean change = false;

void setup(){
  size(600,600);
  noStroke();
  
  arriba=loadImage("slimeuwu.png");
  abajo=loadImage("slimeuwu.png");
  derecha=loadImage("slimeuwu.png");
  izquierda=loadImage("slimeuwuizq.png");
  lab=loadImage("20.png");
  langosta=loadImage("langosta.jpg");
  
  file = new SoundFile(this, "8BitAdventure.mp3");
  fil3 = new SoundFile(this, "scream2.mp3");
  file.loop();
  
}

void draw(){
  float touch = red(get(x,y));
  background(255);
  image(lab, 5, 5);
  lab.resize(580, 550);
  println(red(get(mouseX, mouseY)));
  
  if(change == true){
    laberinto2();
  }
  
  if(keyPressed && (key==CODED)){
    if(keyCode == LEFT){
       x-=2;
       image(izquierda, x, y);
    }else if(keyCode==RIGHT){
      x+=2;
      image(derecha, x, y);
    }
    if(keyCode ==UP){
      y-=2;
      image(arriba, x, y);
      
    }else if(keyCode== DOWN){
      y+=2;
      image(abajo, x, y);
    }
    //if(key== 'q'){
    //  change=false;
    //}
    
  }

  if(x<3){
    x+=5;
  }
  if(x>580){
    x-=5;
  }
  
   if(y<3){
    y+=5;
  }
  if(y>570){
    y-=5;
  }
  
  //condición para que no se toquen las paredes del laberinto 
  if(touch == 0) {
    x = 275;
    y = 0;
    //fil3.play();
    //langosta.resize(600, 600);
    //image(langosta, 1, 1);
    //change=true;
    
  }
  
  
  if(x>=320  && y>=560 ){
    change=true;
  }
  
  //do{
  //  t+=1;
  //}while(change==false);
  
 
 

   if (keyPressed == false){
  image(abajo, x, y);
}

//fill(0);
// text("tu puntaje es: " +t, 20, 570 );
  
}
