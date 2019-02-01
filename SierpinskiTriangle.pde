public void setup(){
	size(500, 500);
	sierpinski(0, 500 , 500);
}
public void draw(){
}
public void mouseDragged(){
}
public void sierpinski(int x, int y, int len) {
 if(len <= 10){
 	triangle(x, y, x + len, y, x + (len/2), y - len);
 } else {
 	fill(50, 10); // bottom right
 	sierpinski(x, y, len/2);
 	fill(20); // bottom left
 	sierpinski(x + (len/2), y, len/2);
 	fill(100); // top triangle
 	sierpinski(x + (len/4), y - (len/2), len/2);
 }
}