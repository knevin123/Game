
class Map extends GameObject
{
  int x=width/12;
  int y=height/8;
  PVector turrent;
  PVector mappos;
  float squarex;
  int squarey;
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
     fill(100);
     stroke(100);
     for(mappos.x=x;mappos.x<width;mappos.x+=x)
     {
         
         if (mouseX>mappos.x && mouseX<(mappos.x+x) && mouseY>mappos.y && mouseY<(mappos.y+y))
         {
           fill(200);
           stroke(200);
         
           if(mousePressed)
           {
             x1=mappos.x+(x/2);
             y1=mappos.y+(y/2);
           }
         }//end if
         
         rect(mappos.x,mappos.y,x,y);
         fill(100);
         stroke(100);
         
     }//end for
     mappos.y+=y*2;
     for(mappos.x=0;mappos.x<width-x;mappos.x+=x)
     {
         if (mouseX>mappos.x && mouseX<(mappos.x+x) && mouseY>mappos.y && mouseY<(mappos.y+y))
         {
           fill(200);
           stroke(200);
           if(mousePressed)
           {
             x1=mappos.x+(x/2);
             y1=mappos.y+(y/2);
           }
         }//end if
         rect(mappos.x,mappos.y,x,y);
         fill(100);
         stroke(100);
     }//end for
     mappos.y+=y*2;
     for(mappos.x=x;mappos.x<width;mappos.x+=x)
     {
         if (mouseX>mappos.x && mouseX<(mappos.x+x) && mouseY>mappos.y && mouseY<(mappos.y+y))
         {
           fill(200);
           stroke(200);
           if(mousePressed)
           {
             x1=mappos.x+(x/2);
             y1=mappos.y+(y/2);
           }
         }//end if
         rect(mappos.x,mappos.y,x,y);
         fill(100);
         stroke(100);
     }//end for
     mappos.y+=y*2;
     for(mappos.x=0;mappos.x<width;mappos.x+=x)
     {
         if (mouseX>mappos.x && mouseX<(mappos.x+x) && mouseY>mappos.y && mouseY<(mappos.y+y))
         {
           fill(200);
           stroke(200);
           if(mousePressed)
           {
             x1=mappos.x+(x/2);
             y1=mappos.y+(x/2);
           }
         }//end if
         rect(mappos.x,mappos.y,x,y);
         fill(100);
         stroke(100);
         
     }//end for
  }//end render
  PVector mousePressed() 
  { 
    turrent.x=x1;
    turrent.y=y1;
    return turrent;
     
  }//end mouseclicked  
}//end class