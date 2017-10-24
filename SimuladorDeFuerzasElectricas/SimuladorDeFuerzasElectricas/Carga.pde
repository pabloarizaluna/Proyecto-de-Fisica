class Carga{
  float carga;
  float masa;
  float posicionX;
  float posicionY;
  PVector fuerza;
  PVector velocidad;
  
  public Carga(float masa, float carga, float posicionX, float posicionY){
  this.masa = masa;
  this.carga = carga;
  this.posicionX = posicionX;
  this.posicionY = posicionY;
  this.velocidad.x=0;
  this.velocidad.y=0;
  
}
  public float getCarga(){
    return carga;
  }
  
  public void setCarga(float carga){
    this.carga = carga;
  }
  
  public float getMasa(){
    return masa;
  }
  
  public void setMasa(float masa){
    this.masa = masa;
  }
  
  public float getPosicionX(){
    return posicionX;
  }
  
  public void setPosicionX(float posicionX){
    this.posicionX = posicionX;
  }
  
  public float getPosicionY(){
    return posicionY;
  }
  
  public void setPosicionY(float posicionY){
    this.posicionY = posicionY;
  }
  
  public PVector getFuerza(){
    return fuerza;
  }
  
  public void setFuerza(PVector fuerza){
    this.fuerza = fuerza;
  }
  

  
  public PVector getVelocidad(){
    return velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad = velocidad;
  }

}