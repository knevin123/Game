// The class name starts with uppercase
class Ship extends GameObject
{
  // Fields
  float stx;
  float sty;
  int lives;
  int ammo;
  float check;
  
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Ship()
  {
    // Constructor chaining. Call a constructor in the super class
    super(45, 45);     
    
    
  }
  
  Ship(float startX, float startY, color c)
  {
    super(startX, startY);
    stx=startX;
    sty=startY;
    this.c = c;
    lives=100;
    ammo=0;
    check=random(0,10);
    
  }

  int elapsed = 12;
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    forward.mult(speed);
    
    
    elapsed ++;
  }
  
  void render()
  {
    pushMatrix(); // reset the translation and rotation
    translate(pos.x, pos.y);
    stroke(0,0,255);
    fill(c);
    rotate(theta); // We want rotate to happen first, so you make the call AFTER translate 
    //spawns either a boss or a  normal AI
    //normal ai
    if(check>2)
    {
      triangle(halfW,-halfW,-halfW,-halfW,0,halfW);
    }
    //boss ai
    else
    {
      rect(-halfW,-halfW,w,w);
    }
    popMatrix();
    
  }   
}