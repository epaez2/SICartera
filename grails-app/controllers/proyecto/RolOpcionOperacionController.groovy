package proyecto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RolOpcionOperacionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RolOpcionOperacion.list(params), model:[rolOpcionOperacionInstanceCount: RolOpcionOperacion.count()]
    }

    def show(RolOpcionOperacion rolOpcionOperacionInstance) {
        respond rolOpcionOperacionInstance
    }

    def create() {
        respond new RolOpcionOperacion(params)
    }

    @Transactional
    def save(RolOpcionOperacion rolOpcionOperacionInstance) {
        if (rolOpcionOperacionInstance == null) {
            notFound()
            return
        }

        if (rolOpcionOperacionInstance.hasErrors()) {
            respond rolOpcionOperacionInstance.errors, view:'create'
            return
        }

        rolOpcionOperacionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rolOpcionOperacionInstance.label', default: 'RolOpcionOperacion'), rolOpcionOperacionInstance.id])
                redirect rolOpcionOperacionInstance
            }
            '*' { respond rolOpcionOperacionInstance, [status: CREATED] }
        }
    }

    def edit(RolOpcionOperacion rolOpcionOperacionInstance) {
        respond rolOpcionOperacionInstance
    }

    @Transactional
    def update(RolOpcionOperacion rolOpcionOperacionInstance) {
        if (rolOpcionOperacionInstance == null) {
            notFound()
            return
        }

        if (rolOpcionOperacionInstance.hasErrors()) {
            respond rolOpcionOperacionInstance.errors, view:'edit'
            return
        }

        rolOpcionOperacionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RolOpcionOperacion.label', default: 'RolOpcionOperacion'), rolOpcionOperacionInstance.id])
                redirect rolOpcionOperacionInstance
            }
            '*'{ respond rolOpcionOperacionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RolOpcionOperacion rolOpcionOperacionInstance) {

        if (rolOpcionOperacionInstance == null) {
            notFound()
            return
        }

        rolOpcionOperacionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RolOpcionOperacion.label', default: 'RolOpcionOperacion'), rolOpcionOperacionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rolOpcionOperacionInstance.label', default: 'RolOpcionOperacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
