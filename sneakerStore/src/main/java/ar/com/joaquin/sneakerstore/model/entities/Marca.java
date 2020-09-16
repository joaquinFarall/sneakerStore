
package ar.com.joaquin.sneakerstore.model.entities;

public class Marca {
    private int marcaId;
    private String marcaNombre;
    
public void setMarcaId (int marcaId){
    this.marcaId = marcaId;
}
    
public int getMarcaId() {
    return this.marcaId;
}

public void setMarcaNombre(String marcaNombre){
    this.marcaNombre = marcaNombre;
}

public String getMarcaNombre(){
    return this.marcaNombre;
}

}

