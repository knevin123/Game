
class Map extends GameObject
{
  int x=width/12;
  int y=height/8;
  PVector turrent;
  PVector mappos;
  float x1;
  float y1;
  
  Map()
  {
    mappos = new PVector(x, 0);
    turrent = new PVector(-100, -100);
    x1=0;
    y1=0;
  }//end Map
  void update()
  {
    
  }//end update
  void render()
  {
     
     mappos = new PVector(x, 0);
     fill(0,255,0);
     stroke(0,255,0);
     for(mappos.x=x;mappos.x<width;mappos.x+=x)
     {   
         rect(mappos.x,mappos.y,x,y);
         fill(0,255,0);
         stroke(0,255,0);
         
     }//end for
     mappos.y+=y*2;
     for(mappos.x=0;mappos.x<width-x;mappos.x+=x)
     {
         rect(mappos.x,mappos.y,x,y);
         fill(0,255,0);
         stroke(0,255,0);
     }//end for
     mappos.y+=y*2;
     for(mappos.x=x;mappos.x<width;mappos.x+=x)
     {
         rect(mappos.x,mappos.y,x,y);
         fill(0,255,0);
         stroke(0,255,0);
     }//end for
     
     
  }//end render 
}//end class