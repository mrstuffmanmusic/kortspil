String[] kulor    = {"C", "D", "H", "S"};
String[] vaerdi   = {"A", "K", "Q", "J", "10", "9", "8", "7", "6", "5", "4", "3", "2"};


String[] kulor1    = {"C", "D", "H", "S"};
String[] vaerdi2   = {"A", "K", "Q", "J", "10", "9", "8", "7", "6", "5", "4", "3", "2"};

String[] kortTekster  = new String[52];
PImage[] kortBilleder = new PImage[52];

PImage vistBillede;


boolean knapTrykket ;

void setup() {
  background(100,200,250);
  rect(50, 500, 170, 55);
  println("Spiller 1");
  size(600, 600);
  fill(0, 0, 0);
  textSize(32);
  text("Draw Card", 55, 540);

  fill(250, 250, 250);
  rect(400, 500, 170, 55);
  println("Dealer");
  fill(250, 250, 250);
  textSize(32);
  fill(0, 0, 0);
  text("Stay", 450, 540);

  textSize(32);
  fill(0, 0, 0);
  text("Player 1", 60, 70);

  textSize(32);
  fill(0, 0, 0);
  
  text("Dealer", 420, 70);

  ////
  int l     = kulor.length;
  float r   = random(l);

  int index = int(r);
  ///
  
  int index2 = int(random(vaerdi.length));

  println(kulor[index] +" "+ vaerdi[index2]);

  println("Dealer");


  int index3 = int(random(kulor1.length));
  int index4 = int(random(vaerdi2.length));

  println(kulor[index3] +" "+ vaerdi[index4]);
}


void draw() {

}

void mousePressed() {

  knapTrykket = mouseX < 170 && mouseX > 55 &&
    mouseY > 500 && mouseY < 550  ;
  if (knapTrykket) {
    println("Knap trykket");




    rect(50, 500, 170, 55);
    fill(50, 300, 200);


    textSize(32);
    text("Draw Card", 55, 540);
    fill(50, 300, 200);
int nummer = int(random(kulor.length));
String kuloer = kulor[nummer];//int(random(kulor.length));
String value = vaerdi[int(random(vaerdi.length))];


vistBillede = loadImage(value+kuloer+".png"); 
vistBillede.resize(162, 248);
image(vistBillede,55,100);

 knapTrykket = mouseX < 170 && mouseX > 55 &&
    mouseY > 500 && mouseY < 550  ;
  if (knapTrykket) {
    
vistBillede = loadImage(value+kuloer+".png"); 
vistBillede.resize(162, 248);
image(vistBillede,55,150);

  }
  }
}
