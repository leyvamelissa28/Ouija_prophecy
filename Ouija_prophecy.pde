PImage img;
PImage img2;
PImage Ouija;
PFont font;
PFont font2;
PFont font3;


//Flames
PImage flame1;
PImage flame2;
PImage flame3;
PImage flame4;
PImage flame5;
PImage flame6;

//text stings
String a = "Please: Yes or No questions only";
String b = "Ask and I will tell you your future";
String[] answers={"How should I know? Go ask your Mother.","I'm a little busy right now kid. Buzz off.",
 "Blue.","Its hazy; honestly I'm four Martinis in right now, you sure you want me to answer?",
 "Maybe... not really. I'll be blunt kid, not with that face.","I'm dead, sweetie. Not God.",
 "I've heard it both ways.","You're a little perverted sicko aren't you? But yes... the answer is yes.",
 "Not my problem. LOL","Wow, I like your style. You're a lunitic, but I like it. Oh, and the answer is No"};
String g ="Left click to reveal your answer.";
String h ="Ask the void, my child.";


boolean mode=false;


void setup(){

  size(900,600);
  textSize(40);
  textAlign(CENTER,CENTER);
   //Ouija pict
   Ouija = loadImage("Ouija.jpg");
   
   font = loadFont("SpookyGhoster-Regular-48.vlw");
   font2 = loadFont("AntiqueNo14-Regular-48.vlw");
   font3 = loadFont("Ebrima-Bold-48.vlw");
 
 //Candles
 img = loadImage("candle2.png");
 img2 = loadImage("candle1.png");
 
 //Flames
 flame1 = loadImage("flames.png");
 flame2 = loadImage("flamesf.png");
 flame3 = loadImage("flamesb.png");
 flame4 = loadImage("flamesc.png");
 flame5 = loadImage("flamesd.png");
 flame6 = loadImage("flamese.png");
 
 
  noLoop();
}
void draw()
{
  
//bluish background 
  background (#0D1C16);
   textAlign (CENTER);
   //white font
   fill(255);
   textFont(font,70);
   text("Hello from the Other Side",width/2,height/12+12);
   textSize(40);
   textAlign(CENTER);
   text(b, 300, height/12+30,320, 320);
 
//Table top 
    noStroke();
    fill(#5D1B1B);
    rect(0,height/3-20,width,height/3*2+50);
    
//ouija board    
    imageMode(CORNER);
    image(Ouija, width/6, height/3-10, 600,397.5);
    textAlign (CENTER);
    fill(#0D1C16);
    textFont(font3,40);
    text("GOOD BYE", width/2, height-40);

//see through rectangle
    fill(#091510,70);
    rect(0,height/3-20,width,height/3*2+50); 

//candle images
      imageMode(CENTER);
      image(img, width/5*4+50, 200, 88,165);
      image(img2, width/7, 475, 132,247.5);
     
 //side font
  fill(255);
  textFont(font2,30);
  textAlign (CENTER);
  text(a,750, 350, 150, 320);
  
 //Prophecy font control   
    textFont(font2,40);
     textAlign(CENTER,CENTER);
     fill(#0D1C16);
 //randomize prophecies
   int i=int(random(0,10));

 //function/ show words
  if (mode==false)
  {

   text(h,width/6+50, height/3-20,500, 400);
   textSize(20);
   text(g,width/6+50, height/3+50,500, 400);
  
  }
  else
  {
    textSize(40);
    text(answers[i],width/6+50, height/3, 500, 400); 
  }
}
void mouseClicked()
{
  mode =! mode;
  redraw();
}

void loop()
{ 
  frameRate(4);
 loop();
//first candle 

    int image = int(random(0,6));
     imageMode(CENTER);

       fill(255,188,0,88);
if (image ==0){
  image (flame1,width/5*4+48,135,30,65);
   ellipse(width/5*4+45,135, 200, 200);
}
if (image ==1){
image (flame2, width/5*4+50,135,30,65);
   ellipse(width/5*4+55,135, 180, 180);
}
if (image ==2){
image (flame3, width/5*4+50,135,30,65);
   ellipse(width/5*4+45,145, 210, 210);
}
if (image ==3){
image (flame4, width/5*4+50,135,30,65);
   ellipse(width/5*4+45,135, 200, 200);
}
if (image ==4){
image (flame5, width/5*4+48,135,30,65);
   ellipse(width/5*4+55,135, 180, 200);
}
if (image ==5){
image (flame6, width/5*4+50,135,30,65);
   ellipse(width/5*4+45,145, 200, 210);
}
   
 //second candle
   int image2 = int(random(0,6));
     imageMode(CENTER);
     //image(img2, width/7, 475, 132,247.5);
     fill(255,188,0,88);
if (image2 ==0){
  image (flame1,width/7-3,375,45,97.5);
          ellipse(width/7,385, 230, 240);
}
if (image2 ==1){
image (flame2, width/7,375,45,97.5);
       ellipse(width/7,375, 240, 220);
}
if (image2 ==2){
image (flame3, width/7,375,45,97.5);
     ellipse(width/7,367, 230, 230);
}
if (image2 ==3){
image (flame4, width/7+5,375,45,97.5);
   ellipse(width/7+10,375, 240, 250);
}
if (image2 ==4){
image (flame5, width/7-3,375,45,97.5);
   ellipse(width/7,385, 250, 250);
}
if (image2 ==5){
image (flame6, width/7,375,45,97.5);
   ellipse(width/7-10,367, 260, 250);
}
}
