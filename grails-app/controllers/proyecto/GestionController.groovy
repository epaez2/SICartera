package proyecto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GestionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Gestion.list(params), model:[gestionInstanceCount: Gestion.count()]
    }

    def show(Gestion gestionInstance) {
        respond gestionInstance
    }

    def create() {
        respond new Gestion(params)
    }

    @Transactional
    def save(Gestion gestionInstance) {
        if (gestionInstance == null) {
            notFound()
            return
        }

        if (gestionInstance.hasErrors()) {
            respond gestionInstance.errors, view:'create'
            return
        }

        gestionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gestionInstance.label', default: 'Gestion'), gestionInstance.id])
                redirect gestionInstance
            }
            '*' { respond gestionInstance, [status: CREATED] }
        }
    }

    def edit(Gestion gestionInstance) {
        respond gestionInstance
    }

    @Transactional
    def update(Gestion gestionInstance) {
        if (gestionInstance == null) {
            notFound()
            return
        }

        if (gestionInstance.hasErrors()) {
            respond gestionInstance.errors, view:'edit'
            return
        }

        gestionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Gestion.label', default: 'Gestion'), gestionInstance.id])
                redirect gestionInstance
            }
            '*'{ respond gestionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Gestion gestionInstance) {

        if (gestionInstance == null) {
            notFound()
            return
        }

        gestionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Gestion.label', default: 'Gestion'), gestionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gestionInstance.label', default: 'Gestion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
