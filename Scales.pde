void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  background(255,255,255);
boolean shift = true;
 for(int y = 50; y <= 500; y += 25){
   for(int x = 50; x <= 500; x += 30){
     if (shift == true)
   star(x-10,y);
   else
   star(x,y);
 }
   if (shift == true)
   shift = false;
   else
   shift = true;
 }
}

void star(int x, int y) {
  noStroke();
  fill(255*(float)Math.random(),255*(float)Math.random(),255*(float)Math.random());
  triangle(x-22.5,y-40,x-17.5,y-30,x-27.5,y-30);
  triangle(x-40,y-30,x-20,y-30,x-10,y-10);
  triangle(x-5,y-30,x-25,y-30,x-35,y-10);
}
