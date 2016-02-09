
class Turrent extends GameObject
{
  PVector tur;
  Turrent(PVector turpos)
  {
    super(turpos.x,turpos.y);
  }
  
  void update()
  {
  }
  void render()
  {    
    stroke(0,0,255);
    fill(0,0,255);
    ellipse(pos.x,pos.y,70,70);
  }
}