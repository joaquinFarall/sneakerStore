
package ar.com.joaquin.sneakerstore.model.entities;

public class Productos {
    private int productoId;
    private Marca marca;
    private String productoNombre;
    private String productoDescripcion;
    private Tipo tipo;
    private String foto1;
    private String foto2;
    private String foto3;
    private int precio;
    
    public void setProductoId (int productoId){
        this.productoId = productoId;
    }

    public int getProductoId (){
        return this.productoId;
    }

    public void setMarca (Marca marca){
        this.marca = marca;
    }

    public Marca getMarca(){
        return this.marca;
    }

    public String getProductoNombre() {
        return productoNombre;
    }

    public void setProductoNombre(String productoNombre) {
        this.productoNombre = productoNombre;
    }

    public String getProductoDescripcion() {
        return productoDescripcion;
    }

    public void setProductoDescripcion(String productoDescripcion) {
        this.productoDescripcion = productoDescripcion;
    }

    public Tipo getTipo() {
        return tipo;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

    public String getFoto1() {
        return foto1;
    }

    public void setFoto1(String foto1) {
        this.foto1 = foto1;
    }

    public String getFoto2() {
        return foto2;
    }

    public void setFoto2(String foto2) {
        this.foto2 = foto2;
    }

    public String getFoto3() {
        return foto3;
    }

    public void setFoto3(String foto3) {
        this.foto3 = foto3;
    }

     public void setPrecio (int precio){
        this.precio = precio;
    }

    public int getPrecio (){
        return this.precio;
    }
    
}



