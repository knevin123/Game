
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
    //draws the turrents
    stroke(255);
    fill(255);
    ellipse(pos.x,pos.y,70,70);
  }
}