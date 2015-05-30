package proyecto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ObligacionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Obligacion.list(params), model:[obligacionInstanceCount: Obligacion.count()]
    }

    def show(Obligacion obligacionInstance) {
        respond obligacionInstance
    }

    def create() {
        respond new Obligacion(params)
    }

    @Transactional
    def save(Obligacion obligacionInstance) {
        if (obligacionInstance == null) {
            notFound()
            return
        }

        if (obligacionInstance.hasErrors()) {
            respond obligacionInstance.errors, view:'create'
            return
        }

        obligacionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'obligacionInstance.label', default: 'Obligacion'), obligacionInstance.id])
                redirect obligacionInstance
            }
            '*' { respond obligacionInstance, [status: CREATED] }
        }
    }

    def edit(Obligacion obligacionInstance) {
        respond obligacionInstance
    }

    @Transactional
    def update(Obligacion obligacionInstance) {
        if (obligacionInstance == null) {
            notFound()
            return
        }

        if (obligacionInstance.hasErrors()) {
            respond obligacionInstance.errors, view:'edit'
            return
        }

        obligacionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Obligacion.label', default: 'Obligacion'), obligacionInstance.id])
                redirect obligacionInstance
            }
            '*'{ respond obligacionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Obligacion obligacionInstance) {

        if (obligacionInstance == null) {
            notFound()
            return
        }

        obligacionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Obligacion.label', default: 'Obligacion'), obligacionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'obligacionInstance.label', default: 'Obligacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
