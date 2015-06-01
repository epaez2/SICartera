package proyecto



import grails.test.mixin.*
import spock.lang.*

@TestFor(DeudorController)
@Mock(Deudor)
class DeudorControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.deudorInstanceList
            model.deudorInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.deudorInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def deudor = new Deudor()
            deudor.validate()
            controller.save(deudor)

        then:"The create view is rendered again with the correct model"
            model.deudorInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            deudor = new Deudor(params)

            controller.save(deudor)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/deudor/show/1'
            controller.flash.message != null
            Deudor.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def deudor = new Deudor(params)
            controller.show(deudor)

        then:"A model is populated containing the domain instance"
            model.deudorInstance == deudor
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def deudor = new Deudor(params)
            controller.edit(deudor)

        then:"A model is populated containing the domain instance"
            model.deudorInstance == deudor
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/deudor/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def deudor = new Deudor()
            deudor.validate()
            controller.update(deudor)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.deudorInstance == deudor

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            deudor = new Deudor(params).save(flush: true)
            controller.update(deudor)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/deudor/show/$deudor.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/deudor/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def deudor = new Deudor(params).save(flush: true)

        then:"It exists"
            Deudor.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(deudor)

        then:"The instance is deleted"
            Deudor.count() == 0
            response.redirectedUrl == '/deudor/index'
            flash.message != null
    }
}
