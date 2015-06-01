package proyecto



import grails.test.mixin.*
import spock.lang.*

@TestFor(ObligacionController)
@Mock(Obligacion)
class ObligacionControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.obligacionInstanceList
            model.obligacionInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.obligacionInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def obligacion = new Obligacion()
            obligacion.validate()
            controller.save(obligacion)

        then:"The create view is rendered again with the correct model"
            model.obligacionInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            obligacion = new Obligacion(params)

            controller.save(obligacion)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/obligacion/show/1'
            controller.flash.message != null
            Obligacion.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def obligacion = new Obligacion(params)
            controller.show(obligacion)

        then:"A model is populated containing the domain instance"
            model.obligacionInstance == obligacion
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def obligacion = new Obligacion(params)
            controller.edit(obligacion)

        then:"A model is populated containing the domain instance"
            model.obligacionInstance == obligacion
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/obligacion/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def obligacion = new Obligacion()
            obligacion.validate()
            controller.update(obligacion)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.obligacionInstance == obligacion

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            obligacion = new Obligacion(params).save(flush: true)
            controller.update(obligacion)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/obligacion/show/$obligacion.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/obligacion/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def obligacion = new Obligacion(params).save(flush: true)

        then:"It exists"
            Obligacion.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(obligacion)

        then:"The instance is deleted"
            Obligacion.count() == 0
            response.redirectedUrl == '/obligacion/index'
            flash.message != null
    }
}
