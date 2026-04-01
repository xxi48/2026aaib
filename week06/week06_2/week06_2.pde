//week06-2 好玩的程式設計
//Ctrl-N開新視窗，貼上剛剛的week06-1
//接續上周的week01-1
//week06-1 好玩的程式設計
//File-Preference偏好設定，字型放大，接續上周的week05-5
int[][]b=new int[10][16];//Java的2D陣列
void setup() {
  size(800, 500);//視窗大小 800x500
}
void draw() {
  background(255);//背景白色
  for (int i=0; i<10; i++) {//左手i的for(迴圈)對應y座標
    for (int j=0; j<16; j++) {//右手j的for(迴圈)對應x座標
      if (b[i][j]>0){ 
      fill(#E8B2B2,b[i][j]*4);//如果陣列有1，就放淡粉色
      b[i][j]--;//慢慢變小
      }else fill(255);//否則，就放白色
      rect(j*50, i*50, 50, 50) ;//小格子(右手j對應x座標，左手i對應y座標)
    }
  }
}
void mouseDragged() {
  int i=mouseY/50, j=mouseX/50;//左手i對應y座標，右手j對應x座標
  b[i][j]=60;//設成60，倒數計時的紫色
}
