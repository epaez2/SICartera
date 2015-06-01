package proyecto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RolUsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RolUsuario.list(params), model:[rolUsuarioInstanceCount: RolUsuario.count()]
    }

    def show(RolUsuario rolUsuarioInstance) {
        respond rolUsuarioInstance
    }

    def create() {
        respond new RolUsuario(params)
    }

    @Transactional
    def save(RolUsuario rolUsuarioInstance) {
        if (rolUsuarioInstance == null) {
            notFound()
            return
        }

        if (rolUsuarioInstance.hasErrors()) {
            respond rolUsuarioInstance.errors, view:'create'
            return
        }

        rolUsuarioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rolUsuarioInstance.label', default: 'RolUsuario'), rolUsuarioInstance.id])
                redirect rolUsuarioInstance
            }
            '*' { respond rolUsuarioInstance, [status: CREATED] }
        }
    }

    def edit(RolUsuario rolUsuarioInstance) {
        respond rolUsuarioInstance
    }

    @Transactional
    def update(RolUsuario rolUsuarioInstance) {
        if (rolUsuarioInstance == null) {
            notFound()
            return
        }

        if (rolUsuarioInstance.hasErrors()) {
            respond rolUsuarioInstance.errors, view:'edit'
            return
        }

        rolUsuarioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RolUsuario.label', default: 'RolUsuario'), rolUsuarioInstance.id])
                redirect rolUsuarioInstance
            }
            '*'{ respond rolUsuarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RolUsuario rolUsuarioInstance) {

        if (rolUsuarioInstance == null) {
            notFound()
            return
        }

        rolUsuarioInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RolUsuario.label', default: 'RolUsuario'), rolUsuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rolUsuarioInstance.label', default: 'RolUsuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
