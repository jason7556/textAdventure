PFont font1;
PImage start;
PImage y1;
PImage y2;
PImage n1;

int count;

void setup() {
  count = 0;
  start = loadImage( "start.jpg" );
  y1 = loadImage( "y1.jpg" );
  y2 = loadImage( "y2.jpg" );
  n1 = loadImage( "n1.jpg" );
  
  size(800, 600);
  background(255);
  image ( start,0,0 );
  
  font1 = createFont ("Futura.ttc", 18);
  
  textFont(font1, 18);
  fill(0);
  text ( "Pizza man is riding a bicycle in NYC, but the bicycle is broken. ", 100, 60  );
  text ( "You only have 15 mins to make it!. ", 120, 90  );
  text ( "If you want to walk,                        Press y. ", 270, 150  );
  text ( "If you want to take a taxi,               Press n. ", 270, 180  );
}

void draw() {

  textFont(font1);
}


void keyPressed()
{
  if (keyPressed) {
    count ++ ;

    if ( key == 'y') {
       if ( count == 1 ) {
        image ( y1,0 ,0 );
        fill(0);
        text ( "NO!!! You step on dog shit!", 45, 300 ); 
        text ( "Ignore it.                                      Press y", 45, 380);
        text ( "Find a puddle to clean your shoe. Press n", 45, 420 );
        println( count) ;
        } else if ( count == 2 ) {
        image ( y2 , 0 ,0 );
        fill(0);
        text ( "There is a woman smells it!", 60, 100 ); 
        text ( "Say sorry and keep going on.    Press y", 60, 180);
        text ( "Argue with her.                         Press n", 60, 220 );
        println( count) ;
        } else if ( count == 3 ) {
        background(255);
        fill(0);
        text ( "YOU MADE IT!!!", 330, 300 ); 
        println( count) ;
        }
        }
        }
    if ( key == 'n' ) {
       if ( count == 1 ) {
       image ( n1,0 ,0 );
       fill(0);
       text ( "Traffic Jam!", 100, 100 ); 
       text ( "Get off the cab and walk.    Press y", 100, 180);
       text ( "Wait.                                   Press n", 100, 220 );
       println( count) ;
       } else if ( count == 2 ) {
       background(255);
       fill(0);
       text ( "You Failed.", 320, 280 ); 
       text ( "Press r to play again", 320, 320 ); 
       println( count) ;
       } else if ( count == 3 ) {
       background(255);
       fill(0);
       text ( "You Failed !!!!!!", 320, 280 ); 
       text ( "Press r to play again", 320, 320 ); 
       println( count) ;
       } 
       }
    else if (key == 'r'){
    image ( start,0,0 );
    count = 0;
    textFont(font1, 18);
    fill(0);
    text ( "Pizza man is riding a bicycle in NYC, but the bicycle is broken. ", 100, 60  );
    text ( "You only have 15 mins to make it!. ", 120, 90  );
    text ( "If you want to walk,                        Press y. ", 270, 150  );
    text ( "If you want to take a taxi,               Press n. ", 270, 180  );
    }
       
}
























