import fisica.*;
import controlP5.*;

ArrayList<Carga> cargas = new ArrayList<Carga>();
FWorld world;
Carga aux;
MotorGrafico grafico;
boolean band = false;
String textC;
String textM;
float auxCarga;
float auxMasa;

void setup() 
{
  size(1024, 768);
  frameRate(60);
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 0);
  world.setEdges(300, 0, 255, width, height);
  world.remove(world.top);
  world.remove(world.bottom);
  world.remove(world.right);
  world.setEdgesFriction(0);
  grafico = new MotorGrafico(new Cp5Control(new ControlP5(this)));
  grafico.inicio();
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
    auxCarga = -1.6*pow(10, -19);
    auxMasa = 9.1*pow(10, -31);
    if (textC.length() != 0)
      auxCarga = Float.parseFloat(textC)*pow(10, -18);
    if (textM.length() != 0)
      auxMasa = Float.parseFloat(textM)*pow(10, -30);
    aux = new Carga(auxCarga, auxMasa, new PVector(mouseX, mouseY));
    if (aux.posicion.x > 300) {
      cargas.add(aux);
      world.add(aux.circulo);
      band = false;
    }
  } 
  if (mouseButton == RIGHT)
  {
    auxCarga = 1.6*pow(10, -19);
    auxMasa = 9.1*pow(10, -31);
    if (textC.length() != 0)
      auxCarga = Float.parseFloat(textC)*pow(10, -15);
    if (textM.length() != 0)
      auxMasa = Float.parseFloat(textM)*pow(10, -27);
    aux = new Carga(auxCarga, auxMasa, new PVector(mouseX, mouseY));
    if (aux.posicion.x >300) {
      cargas.add(aux);
      world.add(aux.circulo);
      band = true;
    }
  }
  textC = new String();
  textM = new String();
}
public void controlEvent(ControlEvent theEvent) {
  if (theEvent.getController().getName().equals("Submit")) {
    textC = grafico.cp5.getTextC();
    textM = grafico.cp5.getTextM();
  }
}