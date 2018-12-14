public class bigsnow implements Snow{
  int X,Y;
  double speed;
  
  public bigsnow(double s)
  {
    X=(int)(Math.random()*width);
    Y=(int)(Math.random()*height);
    speed=s;
  }
  
  
  
  void move(){
    Y+=speed;
    if(Y>height){
    Y=0;
    
    X=(int)(Math.random()*width);
    }
  }
  
  void show(){
    fill(255);
    ellipse(X,Y,7,7);
  }
  
  
}