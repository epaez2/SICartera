package proyecto

class Obligacion {
    int numeroObligacion
    Date fecha_obligacion
    float interesCorriente
    float interesMora
    float saldo
    int diassobregiro
    Long estado
    Long tipoObligacion
    byte eliminado
    
    static hasMany=[gestion:Gestion]
    static belongsTo =[deudor:Deudor]
    
    static mapping ={
       table 'obligaciones' 
       version false
       }

    static constraints = {
      numeroObligacion nullable: true,maxSize: 20, blank: false
      diassobregiro nullable: true,maxSize: 20, blank: false
      fecha_obligacion  nullable: true
      interesCorriente(nullable: false,validator :{if (it >0) return true else return false})
      interesMora(nullable: false,validator :{if (it >0) return true else return false})  
      saldo(nullable: false,validator :{if (it >0) return true else return false})
      estado nullable: false
      tipoObligacion nullable: true, maxSize: 20, blank: false
    }
    
    String toString(){
        return tipoObligacion
    }
    
}
