
class MotorFisico{
  
  
  public void calcularFuerza(ArrayList<Carga> cargas){
  
    for(int i=0; i<cargas.size();i++){
       for(int j=0;j<cargas.size();j++){
         if(!(cargas.get(i).equals(cargas.get[j]))){
             double k;
             k=9*Math.pow(10,9);
             double distanciaX, distanciaY, distanciaNeta;
             distanciaX=Math.pow(cargas.get(j).getPosicionX(),2)-Math.pow(cargas.get(i).getPosicionX(),2);
             distanciaX=Math.pow(cargas.get(j).getPosicionY(),2)-Math.pow(cargas.get(i).getPosicionY(),2);
             distanciaNeta=Math.sqrt(Math.pow(distanciaX,2)+Math.pow(distanciaY,2));
             
             
             double fuerza=(k*cargas.get(i).getCarga()*cargas.get(i).getCarga())/distanciaNeta;
           
         }
       }
        
      
    }  
      

  }
  
  public void calcularVelocidad(ArrayList<Carga> cargas){

  }
  
}