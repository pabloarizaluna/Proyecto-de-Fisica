import fisica.*;
import controlP5.*;

ArrayList<Carga> cargas = new ArrayList<Carga>();
FWorld world;
Carga aux;
MotorGrafico grafico;
boolean band = false;
String textC;
String textM;


void setup() 
{
  size(1024, 768);
  frameRate(60);
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 0);
  world.setEdges(300,0,255, width, height);
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
    
    aux = new Carga(-1.6*pow(10, -19), 9.1*pow(10, -31), new PVector(mouseX, mouseY));
    if(aux.posicion.x > 300){
      cargas.add(aux);
      world.add(aux.circulo);
      band = false;
    }
    
    
  } 
  if (mouseButton == RIGHT)
  {
    aux = new Carga(1.6*pow(10, -19), 9.1*pow(10, -31), new PVector(mouseX, mouseY));
    if(aux.posicion.x >300){
      cargas.add(aux);
      world.add(aux.circulo);
      band = true; 
    }
    
  }
}
public void controlEvent(ControlEvent theEvent) {
  if (theEvent.getController().getName().equals("Submit")) {
    textC = grafico.cp5.getTextC();
    textM = grafico.cp5.getTextM();
  }
 
}