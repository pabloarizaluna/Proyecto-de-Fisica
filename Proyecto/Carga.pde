import fisica.*;

class Carga 
{
  FCircle circulo;
  float carga;
  float masa;
  PVector posicion;
  PVector fuerza;
  PVector velocidad;

  public Carga(float carga, float masa, PVector posicion)
  {
    circulo = new FCircle(20);
    circulo.setPosition(posicion.x, posicion.y);
    this.carga = carga;
    this.masa = masa;
    this.posicion = posicion;
    this.fuerza = new PVector(0, 0);
    this.velocidad = new PVector(0, 0);
    if(carga < 0)
      circulo.setFill(0, 0, 255);
    else
      circulo.setFill(255, 0, 0);
  }

  public void actualizarVelocidad()
  {
    circulo.setVelocity(this.velocidad.x, this.velocidad.y);
    posicion.x = circulo.getX();
    posicion.y = circulo.getY();
  }
}
