float cc = 90;
float x,y = 0;
int sw = 0;
float ll = 0;

void setup(){
  size(800,800);
  colorMode(HSB,200);
}

void cryst(){
  
  fill(cc,x,y);
      quad(300,200,400,50,500,200,400,375 - ll);
      quad(300,800 - 200,400,800 - 50,500,800 - 200,400,800 - 375 + ll);
      
      quad(200,350,100,150,275,200,375 - ll,375 - ll);
      quad(200,800 - 350,100,800 - 150,275,800 - 200,375 - ll,800 - 375 + ll);
      
      quad(800 - 200,350,800 - 100,150,800 - 275,200,800 - 375 + ll,375 - ll);  
      quad(800 - 200,800 - 350,800 - 100,800 - 150,800 - 275,800 - 200,800 - 375 + ll,800 - 375 + ll);
}


void draw(){
  background(cc - 10,255,255);
   cryst();
     if(mousePressed == true && mouseButton == LEFT){
     x = mouseX;
     y = mouseY;

    }
    if(mousePressed == true && mouseButton == RIGHT){
      ll = 0;
    }
     if(keyPressed == true && key == 'Z'){
       ll += 2;
    }
      if(keyPressed == true && key == 'z'){
        ll -= 2;
      }
    
    
  if(sw == 0){
    cc += 0.1;
  }else if(sw == 1){
    cc -= 0.1;
  }
  if(cc > 140 && sw == 0){
   sw = 1;
   
  }else if(cc < 90 && sw == 1){
    sw = 0;
  }
  
  
  
 
  
}
