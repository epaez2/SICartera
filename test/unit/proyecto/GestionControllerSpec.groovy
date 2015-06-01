package proyecto



import grails.test.mixin.*
import spock.lang.*

@TestFor(GestionController)
@Mock(Gestion)
class GestionControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.gestionInstanceList
            model.gestionInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.gestionInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def gestion = new Gestion()
            gestion.validate()
            controller.save(gestion)

        then:"The create view is rendered again with the correct model"
            model.gestionInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            gestion = new Gestion(params)

            controller.save(gestion)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/gestion/show/1'
            controller.flash.message != null
            Gestion.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def gestion = new Gestion(params)
            controller.show(gestion)

        then:"A model is populated containing the domain instance"
            model.gestionInstance == gestion
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def gestion = new Gestion(params)
            controller.edit(gestion)

        then:"A model is populated containing the domain instance"
            model.gestionInstance == gestion
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/gestion/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def gestion = new Gestion()
            gestion.validate()
            controller.update(gestion)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.gestionInstance == gestion

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            gestion = new Gestion(params).save(flush: true)
            controller.update(gestion)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/gestion/show/$gestion.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/gestion/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def gestion = new Gestion(params).save(flush: true)

        then:"It exists"
            Gestion.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(gestion)

        then:"The instance is deleted"
            Gestion.count() == 0
            response.redirectedUrl == '/gestion/index'
            flash.message != null
    }
}
