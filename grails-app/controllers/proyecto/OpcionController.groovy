package proyecto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OpcionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Opcion.list(params), model:[opcionInstanceCount: Opcion.count()]
    }

    def show(Opcion opcionInstance) {
        respond opcionInstance
    }

    def create() {
        respond new Opcion(params)
    }

    @Transactional
    def save(Opcion opcionInstance) {
        if (opcionInstance == null) {
            notFound()
            return
        }

        if (opcionInstance.hasErrors()) {
            respond opcionInstance.errors, view:'create'
            return
        }

        opcionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'opcionInstance.label', default: 'Opcion'), opcionInstance.id])
                redirect opcionInstance
            }
            '*' { respond opcionInstance, [status: CREATED] }
        }
    }

    def edit(Opcion opcionInstance) {
        respond opcionInstance
    }

    @Transactional
    def update(Opcion opcionInstance) {
        if (opcionInstance == null) {
            notFound()
            return
        }

        if (opcionInstance.hasErrors()) {
            respond opcionInstance.errors, view:'edit'
            return
        }

        opcionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Opcion.label', default: 'Opcion'), opcionInstance.id])
                redirect opcionInstance
            }
            '*'{ respond opcionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Opcion opcionInstance) {

        if (opcionInstance == null) {
            notFound()
            return
        }

        opcionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Opcion.label', default: 'Opcion'), opcionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'opcionInstance.label', default: 'Opcion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
