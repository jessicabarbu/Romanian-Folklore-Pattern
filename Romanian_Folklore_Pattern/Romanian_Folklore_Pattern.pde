int [] patternNumbers1 = {25,145,265,385,505,625,745};
int [] patternNumbers2 = {75,315,555,795};
int [] patternNumbers3 = {195,435,675};
int patternX1 = 0;
int patternX2 = 0;
float patternSpeed1 = 30;
float patternSpeed2 = 30;


void setup () {
  size (1200,760);
  background(255);
  frameRate(5);
}

void draw () {
  background(255);
  strokeWeight(1.7);
  for (int i = 0; i < patternNumbers1.length; i++){
    pattern1(patternNumbers1[i]);
  }
  for (int i = 0; i < patternNumbers2.length; i++){
    pattern2(patternX1,patternNumbers2[i]);
  }
  
  for (int i = 0; i < patternNumbers3.length; i++){
    pattern3(patternX2,patternNumbers3[i]);
  }
  //moving dance
   if (mousePressed == false && keyPressed == false) {
     patternX1 += patternSpeed1;
     if (patternX1 > 20 || patternX1 < 0) {
       patternSpeed1 = patternSpeed1 * -1;
     }    
     patternX2 += patternSpeed2;
     if (patternX2 > 50 || patternX2 < 0) {
       patternSpeed2 = patternSpeed2 * -1;
     }
   }
   
   noStroke();
   fill(255);
   rect(390,368,405,30);
   fill(random(100));
   textSize(17);
   text ("Romanian Pattern   by Jessica Barbu 21005346",400,387);
 
 // point pattern
  for (int pointY = 5; pointY < 1500; pointY +=120) {
    for (int pointX = 5; pointX < 1500; pointX +=10) {
       fill (0);
       rect (pointX, pointY,2,2);
       rect (pointX, pointY + 30,2,2);
    }
  }
  
} 

void drawCross(int a, int b, int s, int red, int blue, int green) {
  // cross pattern base
  strokeWeight(1.7);
  stroke(red, blue, green);
  line(a, b, a+s, b+s);
  line(a+s, b, a, b+s);
}



void drawWaves (int x, int y) {
  // position of the wave (first pattern)
  drawCross (x, y, 5, 0, 0, 0);
  drawCross (x+5, y-5, 5, 0, 0,0);
  drawCross (x+10, y-10, 5, 0, 0,0);
  drawCross (x+15, y-15, 5, 0, 0,0);
  drawCross (x+20, y-15, 5, 0, 0,0);
  drawCross (x+25, y-15, 5, 0, 0,0);
  drawCross (x+30, y-10, 5, 0, 0,0);
  drawCross (x+35, y-5, 5, 0, 0,0);
  drawCross (x+40, y, 5, 0, 0,0);
  drawCross (x+45, y, 5, 0, 0,0);
  drawCross (x+50, y, 5, 0, 0,0);
  
  //position of red flowers in waves (first pattern)
  drawCross (x+17, y-5, 5, 238,  38, 18);
  drawCross (x+24, y-5, 5, 238,  38, 18);
  drawCross (x+20, y, 5, 238,  38, 18);
  drawCross (x+42, y-15, 5, 238,  38, 18);
  drawCross (x+49, y-15, 5, 238,  38, 18);
  drawCross (x+45, y-10, 5, 238,  38, 18);
}


void pattern1 (int y) {
  // entire wave line pattern (first pattern)
  for (int i = 5; i < 1550; i += 50) {
    drawWaves (i,y); 
  }
}


void girlBody (int x, int y) {
  // upper body girl (second pattern)
  drawCross (x-5, y+5, 5, 0, 0,0);
  drawCross (x, y, 5, 0, 0,0);
  drawCross (x+5, y-5, 5, 0, 0,0);
  drawCross (x+10, y-10, 5, 0,0, 0);
  drawCross (x+15, y-10, 5, 0,0, 0);
  drawCross (x+15, y-15, 5, 0,0, 0);
  drawCross (x+20, y-15, 5, 0,0, 0);
  drawCross (x+20, y-15, 5, 0,0, 0);
  drawCross (x+25, y-15, 5, 0,0, 0);
  drawCross (x+30, y-10, 5, 0,0, 0);
  drawCross (x+25, y-10, 5, 0, 0,0);
  drawCross (x+20, y-10, 5, 0,0, 0);
  drawCross (x+20, y-5, 5, 0, 0,0);
  drawCross (x+20, y-20, 5, 0,0,0);
  drawCross (x+35, y-5, 5, 0, 0,0);
  drawCross (x+40, y, 5, 0, 0,0);
  drawCross (x+45, y+5, 5, 0, 0,0);
  
  //head girl (second pattern)
  drawCross (x+20, y-25, 5,238,  38, 18);
  drawCross (x+25, y-25, 5,238,  38, 18);
  drawCross (x+15, y-25, 5,238,  38, 18);
  drawCross (x+20, y-30, 5,238,  38, 18);
  
  //dress girl (second pattern)
  drawCross (x+20, y, 5, 238,  38, 18);
  drawCross (x+20, y+5, 5,238,  38, 18);
  drawCross (x+25, y+5, 5,238,  38, 18);
  drawCross (x+15, y+5, 5,238,  38, 18);
  drawCross (x+20, y+10, 5,238,  38, 18);
  drawCross (x+25, y+10, 5,238,  38, 18);
  drawCross (x+15, y+10, 5,238,  38, 18);
  drawCross (x+10, y+10, 5,238,  38, 18);
  drawCross (x+30, y+10, 5,238,  38, 18);
  drawCross (x+20, y+15, 5,238,  38, 18);
  drawCross (x+25, y+15, 5,238,  38, 18);
  drawCross (x+15, y+15, 5,238,  38, 18);
  drawCross (x+10, y+15, 5,238,  38, 18);
  drawCross (x+30, y+15, 5,238,  38, 18);
  drawCross (x+5, y+15, 5,238,  38, 18);
  drawCross (x+35, y+15, 5,238,  38, 18);
  drawCross (x+20, y+20, 5,238,  38, 18);
  drawCross (x+25, y+20, 5,238,  38, 18);
  drawCross (x+15, y+20, 5,238,  38, 18);
  drawCross (x+10, y+20, 5,238,  38, 18);
  drawCross (x+30, y+20, 5,238,  38, 18);
  drawCross (x+5, y+20, 5,238,  38, 18);
  drawCross (x+35, y+20, 5,238,  38, 18);
  drawCross (x, y+20, 5, 238,  38, 18);
  drawCross (x+40, y+20, 5,238,  38, 18);
  
  //legs girl (second pattern)
  drawCross (x+25, y+25, 5,0, 0, 0);
  drawCross (x+15, y+25, 5,0,  0, 0);
  drawCross (x+25, y+30, 5,0, 0, 0);
  drawCross (x+15, y+30, 5,0,  0, 0);
  drawCross (x+25, y+35, 5,0, 0, 0);
  drawCross (x+15, y+35, 5,0,  0, 0);
  drawCross (x+30, y+35, 5,0, 0, 0);
  drawCross (x+10, y+35, 5,0,  0, 0);
}

void pattern2 (int patternMove1,int y) { //pattern girl
  for (int i = 5; i < 1550; i += 50) {
    girlBody (i +patternMove1,y);
  }
}

void boyBody (int x, int y) {
  // upper body boy (third pattern)
  drawCross (x-5, y+5, 5, 0, 0,0);
  drawCross (x, y, 5, 0, 0,0);
  drawCross (x+5, y-5, 5, 0, 0,0);
  drawCross (x+10, y-10, 5, 0,0, 0);
  drawCross (x+15, y-10, 5, 0,0, 0);
  drawCross (x+15, y-15, 5, 0,0, 0);
  drawCross (x+25, y-15, 5, 0,0, 0);
  drawCross (x+30, y-10, 5, 0,0, 0);
  drawCross (x+20, y-20, 5, 0,0,0);
  drawCross (x+35, y-5, 5, 0, 0,0);
  drawCross (x+40, y, 5, 0, 0,0);
  drawCross (x+45, y+5, 5, 0, 0,0);
  
  //head boy (third pattern)
  drawCross (x+20, y-25, 5,0, 0,0);
  drawCross (x+25, y-25, 5,0, 0,0);
  drawCross (x+15, y-25, 5,0, 0,0);
  drawCross (x+20, y-30, 5,238,  38, 18);
  
  //blouse boy (third pattern)
  drawCross (x+20, y-15, 5, 238,  38, 18);
  drawCross (x+20, y-5, 5, 238,  38, 18);
  drawCross (x+25, y-5, 5, 238,  38, 18);
  drawCross (x+15, y-5, 5, 238,  38, 18);
  drawCross (x+25, y-10, 5, 238,  38, 18);
  drawCross (x+20, y-10, 5, 238,  38, 18);
  drawCross (x+15, y-10, 5, 238,  38, 18);
  drawCross (x+20, y, 5, 238,  38, 18);
  drawCross (x+25, y, 5,238,  38, 18);
  drawCross (x+15, y, 5,238,  38, 18);
  drawCross (x+20, y+5, 5,238,  38, 18);
  drawCross (x+25, y+5, 5,238,  38, 18);
  drawCross (x+15, y+5, 5,238,  38, 18);

  
  //legs boy (third pattern)
  drawCross (x+25, y+10, 5,0, 0, 0);
  drawCross (x+20, y+10, 5,0, 0, 0);
  drawCross (x+15, y+10, 5,0,  0, 0);
  drawCross (x+25, y+15, 5,0, 0, 0);
  drawCross (x+20, y+15, 5,0, 0, 0);
  drawCross (x+15, y+15, 5,0,  0, 0);
  drawCross (x+25, y+20, 5,0, 0, 0);
  drawCross (x+15, y+20, 5,0,  0, 0);
  drawCross (x+25, y+25, 5,0, 0, 0);
  drawCross (x+15, y+25, 5,0,  0, 0);
  drawCross (x+25, y+30, 5,0, 0, 0);
  drawCross (x+15, y+30, 5,0,  0, 0);
  drawCross (x+25, y+35, 5,0, 0, 0);
  drawCross (x+15, y+35, 5,0,  0, 0);
  drawCross (x+30, y+35, 5,0, 0, 0);
  drawCross (x+10, y+35, 5,0,  0, 0);
}

void pattern3 (int patternMove2, int y) { //pattern boy
  for (int i = 5; i < 1550; i += 50) {
    boyBody (patternMove2+i,y);
  }
}
