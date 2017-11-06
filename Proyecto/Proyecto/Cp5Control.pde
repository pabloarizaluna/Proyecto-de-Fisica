class Cp5Control {
  ControlP5 cp5;
  Textarea myTextarea;
  Textlabel datosCarga;
  String textC;
  String textM;
  
  ControlFont font2D = new ControlFont(createFont("Arial", 30));
  ControlFont font2D_20 = new ControlFont(createFont("Arial", 20));
  ControlFont font2D_10 = new ControlFont(createFont("Arial", 15));
  Cp5Control(ControlP5 control) {
    cp5 = control;
  }

  void inicio() {
   
    cp5.begin(cp5.addBackground("B")
      .setColorValue(100));
      
     cp5.addLabel("SIMULADOR")
      .setFont(font2D)
      .setPosition(50, 20)
      .show();
    //Pantalla de Inicio
    cp5.addTextfield("Carga")
      .setPosition(20, 80)
      .setSize(150, 40)
      .setAutoClear(false)
      ;
    
    cp5.addTextfield("Masa")
      .setPosition(20,160)
      .setSize(150, 40)
      .setAutoClear(false)
      ;
      
    cp5.addButton("Submit")
      .setValue(0)
      .setPosition(100,240)
      .setSize(70,50)
      .setColorBackground(color(0,255,0))
      .setColorBackground(color(0,255,0))
      ;
    cp5.addLabel("Deslice el mouse sobre una")
      .setFont(font2D_20)
      .setPosition(20, 300)
      .show();
    cp5.addLabel("carga para ver sus datos")
      .setFont(font2D_20)
      .setPosition(20, 320)
      .show();
    datosCarga = cp5.addLabel("")
      .setFont(font2D_10)
      .setPosition(20, 350)
      .show();
      
    cp5.end();
  }
  void mostrarInicio() {
    cp5.get("Carga").show();
    cp5.get("Masa").show();
    cp5.get("SIMULADOR").show();
    cp5.get("Submit").show();
    
  }
  void borrarInicio() {
    cp5.get("Carga").hide();
    cp5.get("Masa").show();
    cp5.get("SIMULADOR").hide();
    
  }
  
  String getTextC(){
    textC = cp5.get(Textfield.class,"Carga").getText();
    
    return textC;
  }
  
  String getTextM(){
    textM = cp5.get(Textfield.class,"Masa").getText();
    
    return textM;
  }
  public void setDatosCarga(String texto){
    datosCarga.setText(texto);
  }
  public void controlEvent(ControlEvent theEvent) {
    println(theEvent.getController().getName());
  }
}