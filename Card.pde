class Card{
  int cardID;
  int cardState;
  String imgPath;
  PImage img;
  PImage back;
  
  Card(int state,int id){
    this.cardID = id;
    this.cardState = state;
    this.imgPath = "data/card/"+cardID+".png";
    this.img = loadImage(imgPath);
    back = loadImage("data/card/back.jpg"); 
  }
  
  void display(float x, float y){
    if(cardState == CARD_HIDE){
      image(back, x+1, y+1, slotSize-1, slotSize-1);
    }else{
      image(this.img, x+1, y+1, slotSize-1, slotSize-1);
    }
  }
 
}
