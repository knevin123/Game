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
int money;
PVector turpos;
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
  //collects map position for turrent from map
  turpos=map2.mousePressed();
  map2.update();
  map2.render();
  level1();
  for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
    if(go instanceof AI)
    {
     // println(((AI) go).lives);
      if(((AI) go).lives<0)
      {
        if(((AI) go).check>2)
        {
          money+=150;
        }
        //boss ai
        if(((AI) go).check<2)
        {
          money+=250;
        }
        gameObjects.remove(go); 
      }
    }
    
  }  
  for(int i = turrents.size() - 1 ; i >= 0 ;i --)
  {
    GameObject go = turrents.get(i);  
    go.update();
    go.render();
    
  }
  checkhits();
  menu();
  println(money);
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
//uses map position to make a new turrent object
void mouseClicked()
{
  boolean dupe=false;
  //check for duplicate turrents
  for(int i = turrents.size() - 1 ; i >= 0 ;i --)
  {
    GameObject go = turrents.get(i);
    if(go instanceof Turrent)
    {
      if(go.pos.x==turpos.x)
      {
        dupe=true;
      }
    } 
  }
  if(money>=250 && dupe==false)
  {
    GameObject turrent = null;
    turrent = new Turrent(turpos);
    turrents.add(turrent);
    money=money-250;
  }
}
//checking if the turrents are close to the AI
void checkhits()
{
  for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
  {
    GameObject go = gameObjects.get(i);
    if(go instanceof AI)
    {
      for(int j = turrents.size() - 1 ; j >= 0 ;j --)
      {
         GameObject other= turrents.get(j);   
         if(other instanceof Turrent)
         {  
            if (go.pos.dist(other.pos)< go.halfW+150 && frameCount % 70 == 0)
            {
              ((AI) go).lives=((AI) go).lives-25;
            }
         }
      }
    } 
  }
}
//menu at bottom of the screen
void menu()
{
  fill(255);
  stroke(255);
  textSize(26);
  text("level:",width/12,height-(height/8)+30);
  
}