PImage img; 
PImage img2;
PImage img3;
PImage img4;
int ballsize=20;
int[] x = new int[35];
int[] y = new int[35];
int[] xv = new int[35];
int[] yv = new int[35];
//gemaover
int dm=0;
//utu
int []q=new int[200];
int z=0;
int dn=0;
int[] w = new int[200];
int[] f = new int[200];
//owari
int j=57000;
int g=65000;
//kurau
int l=0;
//bosskogeki
int[] xx =new int[20];
int[] vv = new int[20];
int[] zz = new int[20];
int cc=0;
void setup() {
  size(480, 480);
  x[0]=10;
  y[0]=-300;
  xv[0]=1;
  yv[0]=1;
  x[1]=40;
  y[1]=-600;
  xv[1]=3;
  yv[1]=3;
  x[2]=50;
  y[2]=-800;
  xv[2]=3;
  yv[2]=3;
  x[3]=89;
  y[3]=-1000;
  xv[3]=2;
  yv[3]=2;
  x[4]=60;
  y[4]=-1500;
  xv[4]=1;
  yv[4]=1;
  x[5]=30;
  y[5]=-1600;
  xv[5]=2;
  yv[5]=1;
  x[6]=10;
  y[6]=-1700;
  xv[6]=4;
  yv[6]=3;
  x[7]=40;
  y[7]=-2000;
  xv[7]=4;
  yv[7]=3;

  x[8]=404;
  y[8]=-3000;
  xv[8]=3;
  yv[8]=4;

  x[9]=200;
  y[9]=-2500;
  xv[9]=1;
  yv[9]=2;

  x[10]=337;
  y[10]=-2900;
  xv[10]=2;
  yv[10]=3;

  x[11]=234;
  y[11]=-4000;
  xv[11]=4;
  yv[11]=4;

  x[12]=432;
  y[12]=-6000;
  xv[12]=3;
  yv[12]=4;

  x[13]=40;
  y[13]=-5000;
  xv[13]=2;
  yv[13]=4;

  x[14]=231;
  y[14]=-2100;
  xv[14]=4;
  yv[14]=2;

  x[15]=411;
  y[15]=-2200;
  xv[15]=3;
  yv[15]=3;

  x[16]=241;
  y[16]=-2300;
  xv[16]=1;
  yv[16]=1;


  x[17]=380;
  y[17]=-2400;
  xv[17]=2;
  yv[17]=2;

  x[18]=260;
  y[18]=-2500;
  xv[18]=3;
  yv[18]=3;

  x[19]=120;
  y[19]=-2670;
  xv[19]=3;
  yv[19]=2;

  x[20]=180;
  y[20]=-2460;
  xv[20]=4;
  yv[20]=3;

  x[21]=390;
  y[21]=-2830;
  xv[21]=2;
  yv[21]=2;

  x[22]=333;
  y[22]=-2900;
  xv[22]=2;
  yv[22]=3;

  x[23]=233;
  y[23]=-2990;
  xv[23]=3;
  yv[23]=3;

  x[24]=435;
  y[24]=-2320;
  xv[24]=4;
  yv[24]=3;

  x[25]=203;
  y[25]=-2352;
  xv[25]=2;
  yv[25]=3;

  x[26]=111;
  y[26]=-2785;
  xv[26]=1;
  yv[26]=3;

  x[27]=424;
  y[27]=-2488;
  xv[27]=3;
  yv[27]=3;

  x[28]=1;
  y[28]=-2991;
  xv[28]=2;
  yv[28]=3;

  x[29]=444;
  y[29]=-3001;
  xv[29]=3;
  yv[29]=3;

  x[30]=404;
  y[30]=-3200;
  xv[30]=4;
  yv[30]=3;

  x[31]=342;
  y[31]=-3222;
  xv[31]=2;
  yv[31]=3;

  x[32]=256;
  y[32]=-2000;
  xv[32]=1;
  yv[32]=3;

  x[33]=90;
  y[33]=-3522;
  xv[33]=1;
  yv[33]=3;

  x[34]=405;
  y[34]=-2444;
  xv[34]=2;
  yv[34]=3;

  //boss
  xx[0]=10;
  xx[1]=5;
  xx[2]=0;
  xx[3]=-5;
  xx[4]=-10;
  xx[5]=-15;
  xx[6]=-20;
  xx[7]=-25;
  xx[8]=-30;
  xx[9]=-35;
  xx[10]=-40;
  xx[11]=-45;
  xx[12]=-50;
  xx[13]=-55;
  xx[14]=-60;
  xx[15]=-65;
  xx[16]=-70;
  xx[17]=-75;
  xx[18]=-80;
  xx[19]=-85;

  for (int i=0; i<20; i++) {
    vv[i]=240;
  }

  for (int i=0; i<20; i++) {
    zz[i]=1;
  }

  for (int i=0; i<200; i++) {
    f[i]=1;
  }

  for (int i=0; i<200; i++) {
    q[i]=400;
  }
  img=loadImage("hosi.jpg");
  img2=loadImage("over.jpg");
  img3=loadImage("clear.jpg");
  img4=loadImage("boss.jpg");
}

void draw() {
  image(img, 0, 0); 
  sosataisyo();
  for (int i=0; i<35; i++) {
    myball(i);
  }
  utu1();
  ataru();
  over();
  over2();
  tikyu();
  int k=millis();
  if ((k>j)&&(k<g)) {
    image(img4, 0, 0, 500, 500);
  }
  if (k>g) {

    bosstime();
  }
}

void myball(int idx) { 
  fill(130, 154, 99);
  ellipse(x[idx], y[idx], 50, 50); 
  if ( x[idx]-(ballsize/2)+xv[idx] >= width ) {
    xv[idx] =xv[idx]*-1;
  }
  if ( x[idx]+(ballsize/2)+xv[idx] <=0 ) {
    xv[idx] = xv[idx]*-1;
  }
  x[idx] += xv[idx];
  y[idx] += yv[idx];
}
void mouseClicked(MouseEvent e ) {
  z=e.getX();
}
void utu() {
  if (mousePressed) {
    dn++;
  } 
  for (int i=0; i<200; i++) {
    w[i]=z;
  }
  fill(255, 204, 0);
  for (int i=0; i<200; i++) {
    if (dn>=i+1) {
      ellipse(w[i], q[i], 10, 10);
      q[i]=q[i]-f[i];
      if (q[i]<0) {
        w[i]=-10000;
      }
    }
  }
}
void utu1() {
  utu();
}
void ataru() {
  for (int i=0; i<200; i++) {
    for (int h=0; h<35; h++)
      if (50>dist(w[i], q[i], x[h], y[h])) {
        y[h]=1000;
      }
  }
}
void tikyu() { 
  fill(0, 102, 204);
  rect(0, 430, width, height);
}
void bosstime() {

  for (int i=0; i<20; i++) {
    bosskogeki(i);
  }
  boss();
  bosstaosu();
  bossover();
}
void sosataisyo() {
  fill(255, 255, 255);
  triangle(mouseX, 380, mouseX-10, 410, mouseX+10, 410 );
}
void over() {
  for (int i=0; i<35; i++)if (20>dist(mouseX, 400, x[i], y[i])) {
    dm++;
  }
  if (dm>=1) {
    noLoop();
    image(img2, 0, 0, 500, 500);
  }
}
void over2() {
  for (int i=0; i<35; i++) {
    if ((440<=y[i])&&(450>=y[i])) {
      background(165,42,42);
    }
    if (y[i]==440) {
      l++;
    }
    if (l>7) {
      image(img2, 0, 0, 500, 500);
    }
  }
}
void bosskogeki(int aa) {
  fill(153, 163, 81);
  ellipse(vv[aa], xx[aa], 40, 40);
  xx[aa]=xx[aa]+zz[aa];
 
}
void bossover() {
  for (int i=0; i<20; i++) {
    if ((xx[i]>450) || (30>dist(vv[i], xx[i], mouseX, 400))) {
      noLoop();
      image(img2, 0, 0, 500, 500);
    }
  }
}
void boss() { 
  fill(153, 163, 81);
  ellipse(240, -100, 500, 500);
  rect(220, 150, 40, 100);
}
void bosstaosu() {
  for (int i=0; i<20; i++) {
    for (int k=0; k<200; k++) {
      if (20>dist(vv[i], xx[i], w[k], q[k])) {
        background(255);
        vv[i]=1000;
        zz[i]=zz[i]*-1;
        q[k]=1000;
        w[k]=1000;
      }
      if ((q[k]<20)&&(q[k]>18)) {
        background(255);
      }  
      if (q[k]==15) {
        cc++;
      }
    }
  }
  if (cc>=10) {
    image(img3, 0, 0, 500, 500);
  }
}
