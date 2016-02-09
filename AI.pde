// The class name starts with uppercase
class AI extends Ship
{ 
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  // If you don't explicitly call the super class constructor, the default one will get called
  int x;
  int y;
  AI()
  {
    // Constructor chaining
    //super(width * 0.5f, height  * 0.5f, 50);
    x=width/12;
    y=height/8;
    check=random(0,10);
    if(check>2)
    {
      lives=100;
    }
    //boss ai
    else
    {
      lives=200;
    }
  }
  
  
  // This OVERRIDES the update method from the superclass
  void update()
  {
      forward.x = sin(theta);
      forward.y = - cos(theta);
      
      // Move in the direction we are rotated
      forward.mult(speed);
      pos.add(forward);
      if (pos.y < y*1.5)
      {
        theta=PI;
      }
      if(pos.y>y*1.5)
      {
        theta=HALF_PI;
      }
      if(pos.x>width-(x/2))
      {
        theta=PI;
      }
      if(pos.y>y*3.5)
      {
        theta=PI+HALF_PI;
      }
      if(pos.x<(x/2) && pos.y>300)
      {
        theta=PI;
      }
      if(pos.y>y*5.5 )
      {
        theta=HALF_PI;
      }
    
  }

}