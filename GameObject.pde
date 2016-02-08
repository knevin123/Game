/// This is the base class! 
// Everything in the scene will extend GameObject

abstract class GameObject
{
  PVector pos;
  PVector forward;
  float theta = 0.0f;
  float w;
  float halfW;
  float speed = 1.5f;
  color c; 
 
  GameObject()
  {
    // Constructor chaining
    this((width/12)/2, (height/8)/2, 50);     
  }
  
  GameObject(float x, float y, float w)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    this.w = w; // Disambiguate w by using this
    this.halfW = w * 0.5f;
    this.theta = 0.0f;
  }
  
  abstract void update();
  abstract void render();

}