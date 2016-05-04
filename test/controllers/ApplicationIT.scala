package controllers

import org.specs2.mutable._
import org.specs2.json._
import org.specs2.matcher.JsonMatchers
import org.specs2.runner._

import play.api.test._
import play.api.test.Helpers._

/**
 * You can mock out a whole application including requests, plugins etc.
 * For more information, consult the wiki.
 */
class ApplicationIT extends Specification with JsonMatchers {

  "Application" should {
    val baseUrl: String = "/api/v0.1"

    "read accounts" in {
      running(FakeApplication()) {
        val request = FakeRequest(GET, baseUrl + "/accounts?endDate=2015-12-31")
        val response = route(request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        contentAsString(response) must /("accounts") /# 0 /("account" -> "db")
        contentAsString(response) must /("accounts") /# 0 /("balance" -> 7023.44)
        contentAsString(response) must /("accounts") /# 0 /("currencyPos" -> 16)
        contentAsString(response) must /("accounts") /# 0 /("finalRow" -> "Account balance")

        contentAsString(response) must /("accounts") /# 1 /("account" -> "hvb")
        contentAsString(response) must /("accounts") /# 1 /("balance" -> 19151.32)
        contentAsString(response) must /("accounts") /# 1 /("currencyPos" -> 7)
      }
    }

    "read balance" in {
      running(FakeApplication()) {
        val request = FakeRequest(GET, baseUrl + "/accounts/db?endDate=2015-12-31")
        val response = route(request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        contentAsString(response) must /("account" -> "db")
        contentAsString(response) must /("balance" -> 7023.44)
        contentAsString(response) must /("currencyPos" -> 16)
        contentAsString(response) must /("finalRow" -> "Account balance")
      }
    }
  }
}