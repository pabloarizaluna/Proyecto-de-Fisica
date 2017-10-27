import fisica.*;

ArrayList<Carga> cargas = new ArrayList<Carga>();
FWorld world;
Carga aux;
boolean band = false;

void setup() 
{
  size(800, 600);
  frameRate(60);
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 0);
}

void draw() {
  background(255);
  world.step();
  world.draw();
  MotorFisico.calcularFuerza(cargas);
  MotorFisico.calcularVelocidad(cargas);
  for (Carga carga : cargas)
  {
    carga.actualizarVelocidad();
  }
}

void mousePressed()
{
  if (mouseButton == LEFT)
  {
    aux = new Carga(-1.6*pow(10, -19), 9.1*pow(10, -31), new PVector(mouseX, mouseY));
    cargas.add(aux);
    world.add(aux.circulo);
    band = false;
  } 
  if (mouseButton == RIGHT)
  {
    aux = new Carga(1.6*pow(10, -19), 9.1*pow(10, -31), new PVector(mouseX, mouseY));
    cargas.add(aux);
    world.add(aux.circulo);
    band = true;
  }
}