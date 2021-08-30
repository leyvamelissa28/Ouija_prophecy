//https://www.seekpng.com/png/detail/249-2492344_candles-clipart-red-candle-clip-art-candle.png
//https://i.pinimg.com/originals/99/8a/f0/998af0ff2599fa6d534474e31416d367.jpg

PImage img;
PImage img2;
PImage Ouija;
PFont font;
PFont font2;
PFont font3;

int i;

//Flames
PImage [] flame = new PImage[6];

//text stings
String a = "Please: Yes or No questions only";
String b = "Ask and I will tell you your future";
String[] answers={"How should I know? Go ask your Mother.", "I'm a little busy right now kid. Buzz off.",
  "Blue.", "Its hazy; honestly I'm four Martinis in right now, you sure you want me to answer?",
  "Maybe... not really. I'll be blunt kid, not with that face.", "I'm dead, sweetie. Not God.",
  "I've heard it both ways.", "You're a little perverted sicko aren't you? But yes... the answer is yes.",
  "Not my problem. LOL", "Wow, I like your style. You're a lunitic, but I like it. Oh, and the answer is No"};
String g ="Left click to reveal your answer.";
String h ="Ask the void, my child.";


boolean mode=false;


void setup() {

  size(900, 600);
  textSize(40);
  textAlign(CENTER, CENTER);
  //Ouija pict
  Ouija = loadImage("Ouija.jpg");

  font = loadFont("SpookyGhoster-Regular-48.vlw");
  font2 = loadFont("AntiqueNo14-Regular-48.vlw");
  font3 = loadFont("Ebrima-Bold-48.vlw");

  //Candles
  img = loadImage("candle2.png");
  img2 = loadImage("candle1.png");

  //Flames

  flame[0] = loadImage("flames.png");
  flame[1] = loadImage("flamesf.png");
  flame[2] = loadImage("flamesb.png");
  flame[3] = loadImage("flamesc.png");
  flame[4] = loadImage("flamesd.png");
  flame[5] = loadImage("flamese.png");


  //noLoop();
  frameRate(15);
}
void draw()
{

  //bluish background
  background (#0D1C16);
  textAlign (CENTER);
  //white font
  fill(255);
  textFont(font, 70);
  text("Hello from the Other Side", width/2, height/12+12);
  textSize(40);
  textAlign(CENTER);
  text(b, 300, height/12+30, 320, 320);

  //Table top
  noStroke();
  fill(#5D1B1B);
  rect(0, height/3-20, width, height/3*2+50);

  //ouija board
  imageMode(CORNER);
  image(Ouija, width/6, height/3-10, 600, 397.5);
  textAlign (CENTER);
  fill(#0D1C16);
  textFont(font3, 40);
  text("GOOD BYE", width/2, height-40);

  //see through rectangle
  fill(#091510, 70);
  rect(0, height/3-20, width, height/3*2+50);

  //candle images
  imageMode(CENTER);
  image(img, width/5*4+50, 200, 88, 165);
  image(img2, width/7, 475, 132, 247.5);

  //side font
  fill(255);
  textFont(font2, 30);
  textAlign (CENTER);
  text(a, 750, 350, 150, 320);


  //Prophecy font control
  textFont(font2, 40);
  textAlign(CENTER, CENTER);
  fill(#0D1C16);
  //randomize prophecies
  //int i=int(random(0,10));

  //function/ show words
  if (mode==false)
  {

    text(h, width/6+50, height/3-20, 500, 400);
    textSize(20);
    text(g, width/6+50, height/3+50, 500, 400);
  } else
  {
    textSize(40);
    text(answers[i], width/6+50, height/3, 500, 400);
  }
   
  int index = int(random(flame.length));
  image(flame[index], width/5*4+50, 135, 30, 65);


  int index2 = int(random(flame.length));
  image(flame[index2], width/7-3, 375, 45, 97.5);
}
void mouseClicked()
{

  i=int(random(0, 10));
  mode =! mode;
  redraw();
}
