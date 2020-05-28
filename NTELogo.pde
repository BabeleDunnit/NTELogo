void setup() 
{

  xSize = 500.0;
  ySize = 500.0;
  
	size(xSize, ySize);
  background(0);

  xCenter = xSize/2.0;
  yCenter = ySize/2.0;

  outerRadius = 200.0
  spikeRadius = 160.0
  innerRadius = 70.0

  outerSides = 6
  
  for(int i = 0; i < outerSides; i++)
  {
    a1 = (TWO_PI / outerSides * i) - HALF_PI;
    a2 = (TWO_PI / outerSides * (i+1)) - HALF_PI;
    a3 = a1 + ( TWO_PI / (outerSides * 3.0));
    a4 = a1 + ( TWO_PI / (outerSides * 3.0) * 2);
    a5 = a1 - ( TWO_PI / (outerSides * 3.0));

    fill(100 + sin(a1) * 70, 180 + sin(a1) * 50, 0);
    stroke(255, 180 + sin(a1) * 50, 10 + sin(a1) * 10);

    strokeJoin(MITER);
    strokeWeight(3.0);

    beginShape();

    vertex(xCenter+cos(a1)*outerRadius, xCenter+sin(a1)*outerRadius);

    if(i == 0 || i == 1 || i == 3 || i == 4)
    {
      vertex(xCenter+cos(a4)*outerRadius, xCenter+sin(a4)*outerRadius);
      vertex(xCenter+cos(a3)*spikeRadius, xCenter+sin(a3)*spikeRadius);
      vertex(xCenter+cos(a2 - 0.1)*outerRadius, xCenter+sin(a2 - 0.1) * outerRadius);
      vertex(xCenter+cos(a2 - 0.2)*innerRadius, xCenter+sin(a2 - 0.2) * innerRadius);   
    }
    else
    {
      vertex(xCenter+cos(a2)*outerRadius, xCenter+sin(a2)*outerRadius);
      vertex(xCenter+cos(a2)*innerRadius, xCenter+sin(a2)*innerRadius);   
    }
    
    vertex(xCenter+cos(a1)*innerRadius, xCenter+sin(a1)*innerRadius);

    endShape(CLOSE);
}

void draw() 
{
}
