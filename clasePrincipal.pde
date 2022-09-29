class Principal{
  Ciudad Ciudadcita; 
  Bici Bicicletita; 
  Ruedas Rueditas;
  Arboles Arbolitos;

  Principal(){
    Ciudadcita = new Ciudad();
    Bicicletita = new Bici();
    Rueditas = new Ruedas();
    Arbolitos = new Arboles();
   
  }
  void display(){
    Ciudadcita.dibujarCiudad();
    Bicicletita.dibujarBici();
    Rueditas.dibujarRuedas();
    if (key == 'r'){
      Arbolitos.dibujarArboles();
      }
  }
}
  
