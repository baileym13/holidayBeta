float x=600;
public class Moon{

  public Moon(){

    

  }
void drawMoon(){
 ellipse(500,100,100,100);
 fill(#1E1F5D);
 stroke(#1E1F5D);
 ellipse(x,100,100,100);
 x=x-.10;
 if(x<400)
 x=600;
 
}
 



}