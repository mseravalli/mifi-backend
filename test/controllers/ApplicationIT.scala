package controllers

import org.specs2.matcher.JsonMatchers
import org.specs2.mutable._
import play.api.test.Helpers._
import play.api.test._

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
        contentAsString(response) must /("accounts") /# 0 /("currencyPos" -> 17)
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
        contentAsString(response) must /("currencyPos" -> 17)
        contentAsString(response) must /("finalRow" -> "Account balance")
      }
    }

    "timeseries" in {
      running(FakeApplication()) {
        val request = FakeRequest(GET, baseUrl + "/accounts/timeseries?startDate=2014-01-01&endDate=2016-03-31&sumRange=YYYY-MM")
        val response = route(request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        response.map(x => println("hello " + x.toString))

        contentAsString(response) must /("data") /# 0 /# 0 /("date")
        contentAsString(response) must /("data") /# 0 /# 1 /("db")
        contentAsString(response) must /("data") /# 0 /# 2 /("hvb")
        contentAsString(response) must /("data") /# 0 /# 3 /("kalixa")
        contentAsString(response) must /("data") /# 0 /# 4 /("number26")
        contentAsString(response) must /("data") /# 0 /# 5 /("total")

        contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
        contentAsString(response) must /("data") /# 25 /# 1 /(7022.4400)
        contentAsString(response) must /("data") /# 25 /# 2 /(18900.7900)
        contentAsString(response) must /("data") /# 25 /# 3 /(200.2100)
        contentAsString(response) must /("data") /# 25 /# 4 /(0.0)
        contentAsString(response) must /("data") /# 25 /# 5 /(26123.4400)
      }
    }
  }
}