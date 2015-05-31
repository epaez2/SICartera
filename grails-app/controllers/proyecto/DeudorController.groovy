package proyecto



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DeudorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Deudor.list(params), model:[deudorInstanceCount: Deudor.count()]
    }

    def show(Deudor deudorInstance) {
        respond deudorInstance
    }

    def create() {
        respond new Deudor(params)
    }

    @Transactional
    def save(Deudor deudorInstance) {
        if (deudorInstance == null) {
            notFound()
            return
        }

        if (deudorInstance.hasErrors()) {
            respond deudorInstance.errors, view:'create'
            return
        }

        deudorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'deudorInstance.label', default: 'Deudor'), deudorInstance.id])
                redirect deudorInstance
            }
            '*' { respond deudorInstance, [status: CREATED] }
        }
    }

    def edit(Deudor deudorInstance) {
        respond deudorInstance
    }

    @Transactional
    def update(Deudor deudorInstance) {
        if (deudorInstance == null) {
            notFound()
            return
        }

        if (deudorInstance.hasErrors()) {
            respond deudorInstance.errors, view:'edit'
            return
        }

        deudorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Deudor.label', default: 'Deudor'), deudorInstance.id])
                redirect deudorInstance
            }
            '*'{ respond deudorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Deudor deudorInstance) {

        if (deudorInstance == null) {
            notFound()
            return
        }

        deudorInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Deudor.label', default: 'Deudor'), deudorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'deudorInstance.label', default: 'Deudor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
