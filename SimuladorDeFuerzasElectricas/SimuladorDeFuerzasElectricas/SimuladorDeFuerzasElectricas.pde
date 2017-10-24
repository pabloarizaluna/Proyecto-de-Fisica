ArrayList<Carga> cargas = new ArrayList<Carga>();
MotorFisico motor = new MotorFisico();

void setup() 
{
  size(800, 600);
  frameRate(60);
}

void draw() { 
  background(255);
  Carga aux = new Carga(10, 7, 10, 20);
  cargas.add(aux);
  aux = new Carga(8, -7, 20, 20);
  cargas.add(aux);
  for(Carga carga : cargas)
  {
    ellipse(carga.getPosicionX(), carga.getPosicionY(), 10, 10);
  }
}