package cucumber.steps

import geb.*
import pages.GoogleHomePage

this.metaClass.mixin(cucumber.api.groovy.Hooks)
this.metaClass.mixin(cucumber.api.groovy.EN)


Given(~'^I am on consumer registration page$') { ->
//    go('http://www.google.com/')
    to GoogleHomePage
    at GoogleHomePage
}

Given(~'^I verify my "([^"]*)" with "([^"]*)"$') { String field, String input ->

    searchFor(input)

//    $('input', name: 'q').value(input)
//    $('button', name: 'btnG').click()

//    waitFor { $("#${field}").isDisplayed() }
//    $("#${field}").value(input)
}

Then(~'^I will get the following "([^"]*)" in "([^"]*)"$') { String msg, String errfld ->

    assert $('div#ires ol li')[0].find('a').text() == msg

//    if (errfld == "firstname") {
//        $("#lastname").click()
//        sleep 1000
//        assert $(".InputWrap").find(".ErrorText").text() == msg
//
//    }
//    else if (errfld == "street") {
//        $("#firstname").click()
//        a =  $("#address .InputWrap").find(".ErrorText")
//        waitFor { a.getAt(1).isDisplayed() }
//        assert a.getAt(1).text() == msg }
//    else if (errfld == "suburb") {
//        $("#firstname").click()
//        a =  $("#address .InputWrap").find(".ErrorText")
//        waitFor { a.getAt(2).isDisplayed() }
//        assert a.getAt(2).text() == msg }
//    else {
//        $("#firstname").click()
//        a =  $(".InputWrap").find(".ErrorText")
//        waitFor { a.getAt(1).isDisplayed() }
//        assert a.getAt(1).text() == msg }

}
