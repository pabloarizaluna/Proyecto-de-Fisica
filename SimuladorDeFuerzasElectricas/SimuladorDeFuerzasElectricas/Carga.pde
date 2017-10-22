class Carga{
  float carga;
  float masa;
  float posicionX;
  float posicionY;
  float fuerza;
  float velocidad;
  
  public Carga(float masa, float carga, float posicionX, float posicionY){
  this.masa = masa;
  this.carga = carga;
  this.posicionX = posicionX;
  this.posicionY = posicionY;
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
  
  public float getFuerza(){
    return fuerza;
  }
  
  public void setFuerza(float fuerza){
    this.fuerza = fuerza;
  }
  
  public float getVelocidad(){
    return velocidad;
  }
  
  public void setVelocidad(float velocidad){
    this.velocidad = velocidad;
  }
  
}