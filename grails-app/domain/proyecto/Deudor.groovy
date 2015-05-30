package proyecto

class Deudor {
String ceduladeudor
String nombredeudor
String telefonodeudor
String celulardeudor
String direcciondeudor
String barriodeudor
String ciudaddeudor
byte eliminado

     static hasMany=[obligacion:Obligacion]
    
    static mapping ={
       table 'deudores' 
       version false
       }
    
    static constraints = {
 ceduladeudor    nullable:true,maxSize:20
 nombredeudor    nullable:true,maxSize:150, blank: false
 telefonodeudor  nullable:true,maxSize:50, blank:false
 celulardeudor   nullable:true,maxSize:50, blank:false
 direcciondeudor nullable:true,maxSize:100, blank:false
 barriodeudor   nullable:true,maxSize:100, blank: false
 ciudaddeudor    nullable:true,maxSize:100, blank:false
 
    }
    
     String toString(){// el metodo to string sirve para las pruebas 
        return nombredeudor
    }
}
