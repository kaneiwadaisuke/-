float baseH = 60;
float armL1 = 60;
float armL2 = 40;
float armL3 = 40;
float armW1 = 10;
float armW2 = 10;
float armW3 = 5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;

float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle0 = angle0 + dif;
    }
    if(key == 'z'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'x'){
      angle1 = angle1 - dif;
    }
    if(key == 'd'){
      angle2 = angle2 + dif;
    }
    if(key == 'c'){
      angle2 = angle2 - dif;
    }
   
  }
  
  //土台
  translate(0,0,-5);
  box(30,30,10);
  translate(0,0,0);
  
  //1リンク
  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(175);
  box(10,10,baseH);
  
  //2リンク
  translate(0,0,baseH/2+armW1/2);
  rotateX(radians(angle1));
  translate(0,armL1/2-armW1/2,0);
  fill(150);
  box(armW1,armL1,armW1);
  
  //3リンク
 
  translate(0,armL1/2-armW2/2,0);
  rotateX(radians(angle2));  
    translate(0,armW2+5,0);
  fill(125);
  box(armW3,armL2,armW3);
  
 

}
