float locationX, locationY; //円の中心位置を格納する変数
float velocityX, velocityY; //円の速度を格納する変数

void setup() {
    size(800, 600); //800x600 pixelの画面を生成
    frameRate(60);  //フレームレート
    locationX = width/2; //円の初期位置X
    locationY = height/2; //円の初期位置Y
    velocityX = 30;  //円の初期位置X
    velocityY = 2;  //円の初期位置Y
}

void draw() {
    background(0); //背景を描画
    locationX = locationX + velocityX; //円のX座標を更新
    locationY = locationY + velocityY; //円のY座標を更新
    noStroke(); //枠線なし
    fill(0, 127, 255); //塗りの色
    //指定した位置に円を描画
    ellipse(locationX, locationY, 20, 20); 

    if (locationX < 0 || locationX > width) {
        //もし画面の左端、または右端に到達したら
        //X方向のスピードを反転
        velocityX = velocityX * -1;
    }
    if (locationY < 0 || locationY > height) {
        //もし画面の下端、または上端に到達したら
        //Y方向のスピードを反転
        velocityY = velocityY * -1; 
    }
}