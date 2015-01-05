class Anim {
  float x, y;
  float speedX = 0;
  float speedY = 0;
  int animState;
  boolean mouseClick = false;
  PImage deadRole;
  LoadAnimation intro,win,lose,credit;

  Anim(float x, float y, int state) {
    this.x = x;
    this.y = y;
    this.animState = state;
    deadRole = loadImage("data/dead.png");
    win    = new LoadAnimation("data/winAnim/win_",     20);
    lose   = new LoadAnimation("data/loseAnim/dead_",   60);
    intro  = new LoadAnimation("data/introIcon/next_",  20);
    credit = new LoadAnimation("data/creditIcon/icon_", 21);
  }

  void display() {
    switch(animState){
      case GAME_INTRO:
        intro.display(x, y);
        break;
  
      case GAME_WIN:
        win.display(x, y);
        break;
  
      case GAME_LOSE:
        lose.display(x, y);
        break;
        
      case GAME_CREDIT:
        credit.display(x,y);
    }
  }

  void move() {
    switch(animState) {
      case GAME_INTRO:
        if (!intro_1 && mouseClick) {
          speedX = 5;
          x += speedX;
  
          if (x > width + 80) {
            gameState = GAME_PLAYING;
            levelState = LEVEL_1;
            setCard();
            playintro = true;
            mouseClick = false;
            startBGM.pause();
            playBGM.loop();
          }
        }
        break;
      
      case GAME_LOSE:
        if(gameState == GAME_LOSE){
          speedY = -3;
          y += speedY;
          
          if(y < -120){
            image(deadRole,550,230);
          }
        }
        break;
      }
  }
  
}

