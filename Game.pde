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
//5 ints to count the number of AI spawned
int num1=0;
int num2=0;
int num3=0;
int num4=0;
int num5=0;
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
  //draws and moves AI
  for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
    
  } 
  level1();
}
void level1()
{
  if (frameCount % 90 == 0 && num1<5)
  {
    GameObject ai = null;
    int i = (int) random(0, 2);
    switch (i)
    {
      case 0:
        ai = new AI();
        break;
      case 1:
        ai = new AI();
        break;
    }
    gameObjects.add(ai);
    num1++;
  }
  
}