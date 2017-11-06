
static abstract class MotorFisico {
  static public void calcularFuerza(ArrayList<Carga> cargas)
  {
    PVector fuerzaNeta;
    PVector unitario; 
    float fuerza = 0;
    for (Carga carga : cargas)
    {
      fuerzaNeta = new PVector(0, 0);
      fuerza = 0;
      for (Carga aux : cargas)
      {
        if (carga != aux)
        {
          fuerza = (9*pow(10, 9))*(abs(carga.carga*aux.carga))/pow(carga.posicion.dist(aux.posicion), 2);
          unitario = PVector.sub(aux.posicion, carga.posicion);
          unitario.normalize();
          if (carga.carga < 0 && aux.carga < 0 || carga.carga > 0 && aux.carga > 0)
            unitario.mult(-1);
          if (PVector.dist(carga.posicion, aux.posicion) < 25)
            unitario.mult(-10);
          fuerzaNeta.add(unitario.mult(fuerza));
        }
      }
      carga.fuerza = fuerzaNeta;
    }
  }

  static public void calcularVelocidad(ArrayList<Carga> cargas)
  {
    for (Carga carga : cargas)
    {
      PVector aceleracion = PVector.div(carga.fuerza, carga.masa);
      carga.velocidad = PVector.add(carga.velocidad, aceleracion);
    }
  }
}