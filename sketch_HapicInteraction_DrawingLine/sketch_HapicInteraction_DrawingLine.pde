  

int saveCount; //Count of save number

void setup() {
  size(500, 500);
  saveCount = 0;
}

void draw() {
  background(204); //white gray
  line(0, 0, mouseX, mouseY); // (start position = x:0, y:0) (End position = x:mousePosition.x, y:mousePosition.y)
}

void mousePressed() {
  //String filename = "line_" + str(frameCount) + ".jpg";
  String filename = "line_" + str(saveCount) + ".jpg"; //saveFile Name = line_ + 0,1,2... + .jpg
  
  saveCount = saveCount + 1; //when mouse pressed then saveCount++;
  save(filename); //save the file
  println("saved..." + filename); //Debug in console
}