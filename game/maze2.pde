PImage laberinto,lang;

void laberinto2 (){
  float touch = red(get(x,y));
  //background(255);
  size(600,600);
  noStroke();
  laberinto=loadImage("12.png");
   lang=loadImage("cat.png");
  
  lang.resize(600, 600);
  image(lang, 5, 5);
  //background(laberinto);
  

  
  if(touch < 25) {
    x = 255;
    y = 0;
  }
  
  
  
}
