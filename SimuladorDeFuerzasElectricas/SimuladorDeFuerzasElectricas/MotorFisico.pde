
class MotorFisico{
  
  
  public void calcularFuerza(ArrayList<Carga> cargas){
    
    for(int i=0; i<cargas.size();i++){
      
      int acumFuerzaX=0;
      int acumFuerzaY=0;
       for(int j=0;j<cargas.size();j++){
         
         if(!(cargas.get(i).equals(cargas.get(j)))){
             float k;
             k=(float)(9*Math.pow(10,9));
             double distanciaX, distanciaY, distanciaNeta;
             distanciaX=Math.pow(cargas.get(j).getPosicionX(),2)-Math.pow(cargas.get(i).getPosicionX(),2);
             distanciaY=Math.pow(cargas.get(j).getPosicionY(),2)-Math.pow(cargas.get(i).getPosicionY(),2);
             distanciaNeta=Math.sqrt(Math.pow(distanciaX,2)+Math.pow(distanciaY,2));
             
             PVector unitario = new PVector();
             unitario.x=(float)((cargas.get(j).getPosicionX()-cargas.get(i).getPosicionX())/distanciaNeta);
             unitario.y=(float)((cargas.get(j).getPosicionX()-cargas.get(i).getPosicionX())/distanciaNeta);
             
                 
             double fuerza=(k*cargas.get(i).getCarga()*cargas.get(j).getCarga())/distanciaNeta;
             double fuerzaX=fuerza*unitario.x;
             double fuerzaY=fuerza*unitario.y;
             //double fuerzaY=fuerza*cargas.get(i).getFuerza().y;
             if(((cargas.get(i).getCarga()>0)&&(cargas.get(j).getCarga()>0))||(cargas.get(i).getCarga()<0)&&(cargas.get(j).getCarga()<0)){
                   fuerzaX=fuerzaX*-1;
                   fuerzaY=fuerzaY*-1;
             }
              //else if(((cargas.get(i).getCarga()<0)&&(cargas.get(j).getCarga()>0))||(cargas.get(i).getCarga()>0)&&(cargas.get(j).getCarga()<0)){
               //    acumFuerza-=fuerza;      
             //}
             
             cargas.get(i).getFuerza().add((float)fuerzaX,(float)fuerzaY);
                     
         }
         
       }
     
    }  
      

  }
  
  public void calcularVelocidad(ArrayList<Carga> cargas){
     PVector aceleracion = new PVector();
     PVector velo=new PVector();
     
     for(int i=0;i<cargas.size();i++){
       aceleracion=cargas.get(i).getFuerza().div(cargas.get(i).getMasa());
       velo.add(aceleracion,cargas.get(i).getVelocidad());
       cargas.get(i).setVelocidad(velo);

     }
    
  }
  
  
  public void calcularPosicion(ArrayList<Carga> cargas){
   
    
  }
}