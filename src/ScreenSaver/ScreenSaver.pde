Pipe[] pipes = new Pipe[3];
int frame;
void setup(){
  background(255);
  size(displayWidth,displayHeight,P3D);
  frame = 0;
  for(int i=0; i<pipes.length;i++){
    pipes[i] = new Pipe(random(width),random(height),random(500), color(random(256),random(256),random(256)), random(10));
  }
}
void draw(){
  if(frame<500){
    for(int i=0; i<pipes.length;i++){
      pipes[i].randomMovement();
    }
    frame++;
  }else{
    background(255);
    for(int i=0; i<pipes.length;i++){
      pipes[i] = new Pipe(random(width),random(height),random(500), color(random(256),random(256),random(256)), random(10));
    }
    frame = 0;
  }
}