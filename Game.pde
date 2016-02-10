void setup()
{
  fullScreen();
  //Map map = new Map();
  //gameObjects.add(map);
  
  map2=new Map();
  turpos = new PVector(0, 0);
  money=500;
  lives=10;
  level=0;
  startmenu=true;
  gamewon=false;
}

// The class name always starts with uppercase!!
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
ArrayList<GameObject> turrents = new ArrayList<GameObject>();
int ai1=0;
int ai2=0;
int ai3=0;
int ai4=0;
int ai5=0;
int money;
int lives;
int level;
int ai;
PVector turpos;
boolean startmenu;
boolean gamewon;
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
  //call endmenu if you lose
  if(lives<1)
  {
    endmenu();
  }
  //call start menu at the beginning
  if(startmenu)
  {
    startmenu();
    //if press s start game
    if (keys['S'])
    {
      startmenu=false;
      level=1;
    }
  }
  //if all waves over gamewon called
  if(gamewon==true)
  {
    winmenu();
    if (keys['R'])
    {
      lives=10;
      level=0;
      startmenu=true;
      
    }
  }
  if(lives<1)
  {
    level=0;
    endmenu();
    if (keys['R'])
    {
      lives=10;
      level=0;
      startmenu=true;
      
    }
  }
  if(level>0)
  {
    //use draw to create parameters for different levels AI in levels ect
    //collects map position for turrent from map
    turpos=map2.mousePressed();
    //rendermap
    map2.update();
    map2.render();
    //spawns level one when you press s at the main menu
    if(level==1)
    {
      level1();
      if(ai>4)
      {
        level=2;
        ai=0;
      }
    }
    if(level==2)
    {
      level2();
      for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
      {
        GameObject go = gameObjects.get(i);
        go.update();
        go.render();
        if(go instanceof AI)
        {
          go.speed=1.55;
        }
      }
      if(ai>9)
      {
        level=3;
        ai=0;
      }
    }
    if(level==3)
    {
      level3();
      for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
      {
        GameObject go = gameObjects.get(i);
        go.update();
        go.render();
        if(go instanceof AI)
        {
          go.speed=1.60;
        }
      }
      if(ai>14)
      {
        level=4;
        ai=0;
      }
    }
    if(level==4)
    {
      level4();
      for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
      {
        GameObject go = gameObjects.get(i);
        go.update();
        go.render();
        if(go instanceof AI)
        {
          go.speed=1.65;
        }
      }
      if(ai>19)
      {
        level=5;
        ai=0;
      }
    }
    if(level==5)
    {
      level5();
      for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
      {
        GameObject go = gameObjects.get(i);
        go.update();
        go.render();
        if(go instanceof AI)
        {
          go.speed=1.70;
        }
      }
      if(ai>24)
      {
        gamewon=true;
        level=0;
      }
    }
    
    //render AI
    for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
    {
      GameObject go = gameObjects.get(i);
      go.update();
      go.render();
      if(go instanceof AI)
      {
        //remove AI if killed
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
          ai++;
        }
        //removing ai and health
        if(((AI) go).check>2)
          {
            //removes ai and health if it reaches end 
            if(((AI) go).pos.x>width-(width/12) && ((AI) go).pos.y>height-(height/8)*3)
            {
              gameObjects.remove(go); 
              lives-=25;
            }
          }
          //boss ai
          if(((AI) go).check<2)
          {
            //removes ai and health if it reaches end more health lost for boss
            if(((AI) go).pos.x>width-(width/12) && ((AI) go).pos.y>height-(height/8)*3)
            {
              gameObjects.remove(go); 
              lives-=50;
            }
          }
      }
      if(startmenu)
      {
        startmenu();
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
    //println(money);
  }
}

void level1()
{
  if (frameCount % 90 == 0 && ai1<5)
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
    ai1++;
  }
  
}
void level2()
{
  if (frameCount % 90 == 0 && ai2<10)
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
    ai2++;
  }
  
}
void level3()
{
  if (frameCount % 90 == 0 && ai3<15)
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
    ai3++;
  }
  
}

void level4()
{
  if (frameCount % 90 == 0 && ai4<20)
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
    ai4++;
  }
  
}
void level5()
{
  if (frameCount % 90 == 0 && ai5<25)
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
    ai5++;
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
      if(go.pos.x==turpos.x && go.pos.y==turpos.y)
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
            if (go.pos.dist(other.pos)< go.halfW+150 && frameCount % 80 == 0)
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
  text("level:"+level+"/5",width/12,height-(height/16)+13);
  text("Money:"+money,(width/12)*3,height-(height/16)+13);
  text("Tower Defences:"+lives,(width/12)*5,height-(height/16)+13);
  text("Creeps killed(this round):"+ai,(width/12)*8,height-(height/16)+13);
}

void startmenu()
{
    background(0);
    textSize(width/10);
    fill(255);
    stroke(255);
    text("Tower",width/5,height/5);
    text("Defence",width/4,height/3);
    textSize(width/20);
    text("Press 's' to start",width/12,height/1.5);
}
void endmenu()
{
  background(0);
  textSize(width/10);
  fill(255, 51, 51);
  stroke(255, 51, 51);
  text("Game",width/5,height/5);
  text("Over",width/4,height/3);
  textSize(width/20);
  text("Press 'r' to return to start menu",width/12,height/1.5);
  for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
    if(go instanceof AI)
    {
      gameObjects.remove(go); 
    }
  }
  ai1=0;
  ai2=0;
  ai3=0;
  ai4=0;
  ai5=0;
}
void winmenu()
{
  background(0);
  textSize(width/10);
  fill(51, 204, 51);
  stroke(51, 204, 51);
  text("You",width/5,height/5);
  text("Won",width/4,height/3);
  textSize(width/20);
  text("Press 'r' to return to start menu",width/12,height/1.5);
  for(int i = gameObjects.size() - 1 ; i >= 0 ;i --)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
    if(go instanceof AI)
    {
      gameObjects.remove(go); 
    }
  }
  ai1=0;
  ai2=0;
  ai3=0;
  ai4=0;
  ai5=0;
}