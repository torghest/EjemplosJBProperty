package BeansPropios;

public class BJSPPARAMETROS {

   public BJSPPARAMETROS() {
  }

  private int cantidad, inferior, superior;
  public void setCantidad (int a) {cantidad = a;}
  public void setInferior (int a) {inferior = a;}
  public void setSuperior (int a) {superior = a;}

    public int getCantidad() {
        return cantidad;
    }

    public int getInferior() {
        return inferior;
    }

    public int getSuperior() {
        return superior;
    }
  
  public int [] Devolver()
  {
    int [] aleatorios = new int [cantidad];
    boolean existe = false;
    
    for (int i=0; i<aleatorios.length; i++)
    {
      do {
        existe = false;
        Double d = new Double (Math.random()*(superior-inferior+1));
        int candidato = inferior + d.intValue();
        for (int j=0; j<aleatorios.length; j++)
        {
          if (aleatorios[j] == candidato)
          {
            existe = true;
            break;
          }
        }
        if (!existe)
        {
          aleatorios[i] = candidato;
        }
      } while (existe);
    }
    return aleatorios;
  }
  
}
