package cucumber.support

import geb.binding.BindingUpdater
import geb.Browser

import org.codehaus.groovy.grails.test.support.GrailsTestRequestEnvironmentInterceptor

this.metaClass.mixin(cucumber.api.groovy.Hooks)
this.metaClass.mixin(cucumber.api.groovy.EN)


GrailsTestRequestEnvironmentInterceptor scenarioInterceptor


Before () {
    bindingUpdater = new BindingUpdater (binding, new Browser ())
    bindingUpdater.initialize ()
}

After () {
    bindingUpdater.remove ()
}