//1. create int variables for the width and height
int width = 700;
int height = 700;

//2. create an array of ints that contain the same
//   number of ints as the size of your width variable
int array[] = new int[width];

void setup(){
 //3.set the size of your window
 size(width, height);
 
 //4. initialize the int array with random numbers
 //   from 0 to you height variable
 for (int i = 0; i < array.length; i++) {
   array[i] = (int)random(height);
 }
 
 //5. call the noStroke() method
 noStroke();

}

void draw(){
 //6. set the background color with background(r, g, b);
 background(0, 204, 238);
 
 //7. set the color for your graph
 fill(0, 187, 0);

 //8. draw a rectangle for each int in your array.
 //   the x value will be the element of the int
 //   the y value will be your height variable
 //   the width is 1
 //   the height is negative the value of the int at that element in the array
 for (int i = 0; i < array.length; i++) {
   rect(i, height, 1, -array[i]);
 }

 //9. go through the array and swap any two values that are out of order
 //   Do a search for bubble sort for better clarification
   for (int i = 0; i < array.length - 1; i++) {
     if (array[i] > array[i + 1]) {
       int a = array[i];
       int b = array[i + 1];
       array[i + 1] = a;
       array[i] = b;
     }
   }
 
 //10. reset the values of the array to a new random value
 //      whenever the mouse is clicked
 if (mousePressed) {
   for (int i = 0; i < array.length; i++) {
   array[i] = (int)random(height);
   }
 }
 
 //11. try using different sorting algorithms the see which ones are the fastest.
}
