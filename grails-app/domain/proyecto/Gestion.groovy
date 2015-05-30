package proyecto

class Gestion {
    int gestion
    Date fecha_gestion
    String comentario_gestion
    byte eliminado
    
    
    static belongsTo =[obligacion:Obligacion]
    static mapping ={
       table 'gestiones' 
       version false
       }
    static constraints = {
   gestion    nullable:true
   fecha_gestion    nullable:true
   comentario_gestion    nullable:true,maxSize:100, blank:false
   
   
    }
    String toString(){// el metodo to string sirve para las pruebas 
        return gestion
    }
}
