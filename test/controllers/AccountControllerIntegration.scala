package controllers

import org.specs2.matcher.JsonMatchers
import play.api.mvc.MultipartFormData
import play.api.mvc.MultipartFormData.FilePart
import play.api.test._
import play.api.libs.Files._

class AccountControllerIntegration extends PlaySpecification with JsonMatchers {

  "AccountController" should {
    "read accounts" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts?endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("accounts") /# 1 /("name" -> "db")
      contentAsString(response) must /("accounts") /# 1 /("color" -> "#0018A8")
      contentAsString(response) must /("accounts") /# 1 /("balance" -> 590.43)
      contentAsString(response) must /("accounts") /# 1 /("currencyPos" -> 17)
      contentAsString(response) must /("accounts") /# 1 /("finalRow" -> "Account balance")

      contentAsString(response) must /("accounts") /# 2 /("name" -> "hvb")
      contentAsString(response) must /("accounts") /# 2 /("balance" -> 1330.73)
      contentAsString(response) must /("accounts") /# 2 /("currencyPos" -> 7)
    }

    "fail when reading non existing account" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/999999?endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(NOT_FOUND)
      contentType(response) must beSome.which(_ == "application/json")
    }

    "read single account details db" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/1?endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("name" -> "db")
      contentAsString(response) must /("balance" -> 590.43)
      contentAsString(response) must /("currencyPos" -> 17)
      contentAsString(response) must /("finalRow" -> "Account balance")
    }

    "read single account details hvb-depot" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/6?endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("name" -> "hvb-depot")
      contentAsString(response) must /("balance" -> 0)
      contentAsString(response) must /("currencyPos" -> -1)
    }
  }


}
