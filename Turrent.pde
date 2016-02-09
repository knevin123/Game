ArrayList<PVector> pos = new ArrayList<PVector>();
class Turrent extends GameObject
{
  PVector tur;
  int dupe=0;
  Turrent(PVector turpos)
  {
    this.tur = new PVector(0, 0);
    this.tur=turpos;
    for(int i = turrents.size() - 1 ; i >= 0 ;i --)
    {  
      GameObject go = turrents.get(i);
      if(go.pos==turpos)
      {
        dupe++;
      }
      
    }
    pos.add(turpos);
    
  }
  
  void update()
  {
  }
  void render()
  {
    for(int i = turrents.size() - 1 ; i >= 0 ;i --)
    {
      if(dupe<1)
      {
        GameObject go = turrents.get(i);
        ellipse(go.pos.x-width/24,go.pos.y-width/24,70,70);
      }
    }
    println(dupe);
  }
}