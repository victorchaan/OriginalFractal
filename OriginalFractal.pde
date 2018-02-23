public void setup()
{
  size(512, 512);
  background(0);
  fill(0, 0, 0, 0);
  stroke(255);
}

public void draw()
{
  round(256, 256, 512);
}

public void round(int x, int y, int rad)
{
  ellipse(x, y, rad, rad);
  
  if (rad >= 32)
  {  
    round(x-rad/4-rad/32-rad/64+rad/256, y, rad/4+rad/8+rad/32+rad/256);
    round(x+rad/4+rad/32+rad/64-rad/256, y, rad/4+rad/8+rad/32+rad/256);
    round(x, y-rad/4-rad/32-rad/64+rad/256, rad/4+rad/8+rad/32+rad/256);
    round(x, y+rad/4+rad/32+rad/64-rad/256, rad/4+rad/8+rad/32+rad/256);
    round(x, y, rad/8+rad/16-rad/64);
    round(x-rad/4-rad/32-rad/64+rad/256, y-rad/4-rad/32-rad/64+rad/256, rad/8+rad/16-rad/64);
    round(x+rad/4+rad/32+rad/64-rad/256, y+rad/4+rad/32+rad/64-rad/256, rad/8+rad/16-rad/64);
    round(x-rad/4-rad/32-rad/64+rad/256, y+rad/4+rad/32+rad/64-rad/256, rad/8+rad/16-rad/64);
    round(x+rad/4+rad/32+rad/64-rad/256, y-rad/4-rad/32-rad/64+rad/256, rad/8+rad/16-rad/64);
  }
}
