void setup()
{
  fullScreen();
  //Map map = new Map();
  //gameObjects.add(map);
  
  map2=new Map();
  
  
}

// The class name always starts with uppercase!!
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
boolean[] keys = new boolean[512];
Map map2;

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

void draw()
{
  background(0); 
  //use draw to create parameters for different levels AI in levels ect
  map2.update();
  map2.render();
  
   
  
  
}