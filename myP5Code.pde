//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
float flower = 20;
float flowerY = 400;
float droneX = 20;
float colorChange =0;

//🟢Draw Procedure - Runs on Repeat
 draw = function(){
 
  background(255,255,255,0);
  
   if (mousePressed) {
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  fill (255, 215 + colorChange, 0);
  ellipse (200, flowerY, flower, flower);
  ellipse(100,flowerY, flower, flower);
  fill (255,165 + colorChange,0);
  ellipse (250, flowerY, flower, flower);
  ellipse (300, flowerY, flower, flower);
  ellipse (150, flowerY, flower, flower);
  
 fill (255,255,255);
 rect(droneX, 20, 10, 10);
  flower += 1
 flowerY-=3
 droneX+=2

colorChange += 0.5;
  if (colorChange> 40){
  colorChange =0;
  }
  }
  
//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
