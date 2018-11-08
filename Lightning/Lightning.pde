int startX;
int startY;
int endX;
int endY;
void setup()
{
  size(1000,1000);
  stroke(0,0,255);
  strokeWeight(10);
  //set up Start and End values//
 
  cloud();
  
}
void draw()
{
  int newPoint = ((int)(Math.random()*1000)-50);
  endX = startX + ((int)(Math.random()*50)-25)+ ((int)(Math.random()*50)-25);
  endY = startY + ((int)(Math.random()*1000)-50);
    if(mousePressed == true){
      
      if(endX <= 1000 || endY <= 1000){
        pushMatrix();
        translate(mouseX,mouseY);
        
        line(startX+ ((int)(Math.random()*100)-50),startY,endX+ ((int)(Math.random()*50)-25),endY+ ((int)(Math.random()*50)-25));
        line(startX,startY,endX+ ((int)(Math.random()*50)-25),endY+ ((int)(Math.random()*50)-25));
        line(startX+ ((int)(Math.random()*100)-50),startY,endX+ ((int)(Math.random()*50)-25),endY+ ((int)(Math.random()*50)-25));
        line(startX,startY,endX,endY);
        
        
        background(255);
        popMatrix();
        cloud();
        pushMatrix();
        translate(newPoint,newPoint);
        cloud();
        popMatrix();
      }
    }
    
    
}
  

void mousePressed() {
  
 
  
}
void cloud(){
  translate(mouseX,mouseY);
  fill(30);
  
  ellipse(50,50,100,100);
  vertex(100,50);
  vertex(100,-50);
  vertex(50,-25);
}
