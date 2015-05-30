package proyecto

class Usuario {
    String usuario
    String claveusuario
    byte eliminado
    
       static mapping ={
       table 'Usuarios' 
       version false
       }
    static constraints = {
        usuario   nullable:true,maxSize:20
        claveusuario    nullable:true,maxSize:20
    }
    String toString(){
        return usuario
    }
}
