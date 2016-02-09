void setup()
{
  fullScreen();
  //Map map = new Map();
  //gameObjects.add(map);
  
  map2=new Map();
  turpos = new PVector(0, 0);
  money=500;
  
  
}

// The class name always starts with uppercase!!
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
ArrayList<GameObject> turrents = new ArrayList<GameObject>();
int num=0;
int size;
int money;
PVector turpos;
boolean draw;
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
  size=0;
  //use draw to create parameters for different levels AI in levels ect
  turpos=map2.mousePressed();
  //println(turpos);
  map2.update();
  map2.render();
  
  for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
  {
    GameObject go = gameObjects.get(i);
    if(go instanceof Turrent)
    {
      size++;
    }
      
    go.update();
    go.render();
    
  }  
  for(int i = turrents.size() - 1 ; i >= 0 ;i --)
  {
    GameObject go = turrents.get(i);
    if(go instanceof Turrent)
    {
      size++;
    }
      
    go.update();
    go.render();
    
  }
  level2();
  println(size); 
  //println(money);
}

void level1()
{
  if (frameCount % 90 == 0 && num<5)
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
    num++;
  }
  
}
void level2()
{
  if (frameCount % 90 == 0 && num<10)
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
    num++;
  }
  
}
void level3()
{
  if (frameCount % 90 == 0 && num<15)
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
    num++;
  }
  
}

void level4()
{
  if (frameCount % 90 == 0 && num<20)
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
    num++;
  }
  
}
void level5()
{
  if (frameCount % 90 == 0 && num<25)
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
    num++;
  }
  
}
void mouseClicked()
{
  if(money>=250)
  {
    println(turpos);
    
    GameObject turrent = null;
    turrent = new Turrent(turpos);
    turrents.add(turrent);
    money=money-250;
    //println(size); 
  }
}