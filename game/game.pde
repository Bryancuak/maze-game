import processing.sound.*;
int x= 1;
int y=1;
PImage arriba, abajo, derecha, izquierda, lab;
SoundFile file;

void setup(){
  size(600,600);
  noStroke();
  
  arriba=loadImage("slimeuwu.png");
  abajo=loadImage("slimeuwu.png");
  derecha=loadImage("slimeuwu.png");
  izquierda=loadImage("slimeuwuizq.png");
  lab=loadImage("maze2.jpg");
  
  file = new SoundFile(this, "song.mp3");
  file.loop();
  
}

void draw(){
  float touch = red(get(x,y));
  background(255);
  image(lab, 5, 5);
  lab.resize(600, 600);
  println(red(get(mouseX, mouseY)));
  
  if(keyPressed && (key==CODED)){
    if(keyCode == LEFT){
       x-=3;
       image(izquierda, x, y);
    }else if(keyCode==RIGHT){
      x+=3;
      image(derecha, x, y);
    }
    if(keyCode ==UP){
      y-=3;
      image(arriba, x, y);
      
    }else if(keyCode== DOWN){
      y+=3;
      image(abajo, x, y);
      
    }
    if (keyCode== DOWN && keyCode == LEFT){
      image(abajo, x, y);
      x-=10;
      y-=10;
    }
    
  }
  if (keyPressed){
  if (key ==' '){
      fill(#FCFCFC);
      ellipse(x+10, y+10, 10, 10);
    }
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
  //if(x<256 && x>34 && y>40 && y<46){
  //   if(keyCode ==UP){
  //     y+=2;
  //   }
  //  y-=5;
  //}
  if(touch < 255) {
    x = 1;
    y = 150;
  }
   //if(keyCode==RIGHT == false || keyCode==LEFT == false || keyCode==UP == false || keyCode==DOWN == false){
   //  image(abajo, x, y);
   //}
   if (keyPressed == false){
  image(abajo, x, y);
}
  
}
