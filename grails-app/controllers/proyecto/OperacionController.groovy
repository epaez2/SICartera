package proyecto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OperacionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Operacion.list(params), model:[operacionInstanceCount: Operacion.count()]
    }

    def show(Operacion operacionInstance) {
        respond operacionInstance
    }

    def create() {
        respond new Operacion(params)
    }

    @Transactional
    def save(Operacion operacionInstance) {
        if (operacionInstance == null) {
            notFound()
            return
        }

        if (operacionInstance.hasErrors()) {
            respond operacionInstance.errors, view:'create'
            return
        }

        operacionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'operacionInstance.label', default: 'Operacion'), operacionInstance.id])
                redirect operacionInstance
            }
            '*' { respond operacionInstance, [status: CREATED] }
        }
    }

    def edit(Operacion operacionInstance) {
        respond operacionInstance
    }

    @Transactional
    def update(Operacion operacionInstance) {
        if (operacionInstance == null) {
            notFound()
            return
        }

        if (operacionInstance.hasErrors()) {
            respond operacionInstance.errors, view:'edit'
            return
        }

        operacionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Operacion.label', default: 'Operacion'), operacionInstance.id])
                redirect operacionInstance
            }
            '*'{ respond operacionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Operacion operacionInstance) {

        if (operacionInstance == null) {
            notFound()
            return
        }

        operacionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Operacion.label', default: 'Operacion'), operacionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'operacionInstance.label', default: 'Operacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
