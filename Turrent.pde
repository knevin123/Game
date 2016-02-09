
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
    ellipse(pos.x,pos.y,70,70);
  }
}