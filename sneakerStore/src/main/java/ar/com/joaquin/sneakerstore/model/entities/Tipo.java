
package ar.com.joaquin.sneakerstore.model.entities;

public class Tipo {
    private int tipoId;
    private String tipo;
    
public void setTipoId (int tipoId){
    this.tipoId = tipoId;
}
    
public int getTipoId() {
    return this.tipoId;
}

public void setTipo(String tipo){
    this.tipo = tipo;
}

public String getTipo(){
    return this.tipo;
}

}
