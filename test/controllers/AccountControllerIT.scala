package controllers

import org.specs2.matcher.JsonMatchers
import play.api.mvc.MultipartFormData
import play.api.mvc.MultipartFormData.FilePart
import play.api.test._
import play.api.libs.Files._

class AccountControllerIT extends PlaySpecification with JsonMatchers {

  "Accounts" should {
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
      contentAsString(response) must /("accounts") /# 5 /("name" -> "hvb")
      contentAsString(response) must /("accounts") /# 5 /("balance" -> 1330.73)
      contentAsString(response) must /("accounts") /# 5 /("currencyPos" -> 7)
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

    "read single account details hvb-depot sharing enabled" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/6?endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("name" -> "hvb-depot")
      contentAsString(response) must /("balance" -> 0)
      contentAsString(response) must /("currencyPos" -> -1)
    }

    "read single account details hvb-depot sharing disabled" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/6?isSharingRatioEnabled=False&endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("name" -> "hvb-depot")
      contentAsString(response) must /("balance" -> 0)
      contentAsString(response) must /("currencyPos" -> -1)
    }

    "read single account details dkb sharing enabled" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/7?endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("name" -> "dkb")
      contentAsString(response) must /("balance" -> -146.995)
      contentAsString(response) must /("currencyPos" -> -1)
    }

    "read single account details dkb sharing disabled" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/7?isSharingRatioEnabled=False&endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("name" -> "dkb")
      contentAsString(response) must /("balance" -> -293.99)
      contentAsString(response) must /("currencyPos" -> -1)
    }

    "Timeseries" should {
      "retrieve timeseries for all accounts sharing enabled" in new WithApplication() {
        val request = FakeRequest(GET, "/accounts/timeseries?startDate=2014-01-01&endDate=2016-03-31&sumRange=YYYY-MM&accounts=")
        val response = route(app, request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        contentAsString(response) must /("data") /# 0 /# 0 /("date")
        contentAsString(response) must /("data") /# 0 /# 1 /("bcard")
        contentAsString(response) must /("data") /# 0 /# 2 /("db")
        contentAsString(response) must /("data") /# 0 /# 3 /("dkb")
        contentAsString(response) must /("data") /# 0 /# 4 /("dkb-cc-one")
        contentAsString(response) must /("data") /# 0 /# 5 /("dkb-cc-two")
        contentAsString(response) must /("data") /# 0 /# 6 /("hvb")
        contentAsString(response) must /("data") /# 0 /# 7 /("hvb-depot")
        contentAsString(response) must /("data") /# 0 /# 8 /("kalixa")
        contentAsString(response) must /("data") /# 0 /# 9 /("n26")
        contentAsString(response) must /("data") /# 0 /# 10 /("total")

        contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
        contentAsString(response) must /("data") /# 25 /# 1 /(543.87)
        contentAsString(response) must /("data") /# 25 /# 2 /(627.95)
        contentAsString(response) must /("data") /# 25 /# 3 /(-110.515)
        contentAsString(response) must /("data") /# 25 /# 4 /(0)
        contentAsString(response) must /("data") /# 25 /# 5 /(0)
        contentAsString(response) must /("data") /# 25 /# 6 /(1359.73)
        contentAsString(response) must /("data") /# 25 /# 7 /(0)
        contentAsString(response) must /("data") /# 25 /# 8 /(0)
        contentAsString(response) must /("data") /# 25 /# 9 /(4414.14)
        contentAsString(response) must /("data") /# 25 /# 10 /(6835.175)
      }

      "retrieve timeseries for all accounts sharing disabled" in new WithApplication() {
        val request = FakeRequest(GET, "/accounts/timeseries?isSharingRatioEnabled=False&startDate=2014-01-01&endDate=2016-03-31&sumRange=YYYY-MM&accounts=")
        val response = route(app, request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        contentAsString(response) must /("data") /# 0 /# 0 /("date")
        contentAsString(response) must /("data") /# 0 /# 1 /("bcard")
        contentAsString(response) must /("data") /# 0 /# 2 /("db")
        contentAsString(response) must /("data") /# 0 /# 3 /("dkb")
        contentAsString(response) must /("data") /# 0 /# 4 /("dkb-cc-one")
        contentAsString(response) must /("data") /# 0 /# 5 /("dkb-cc-two")
        contentAsString(response) must /("data") /# 0 /# 6 /("hvb")
        contentAsString(response) must /("data") /# 0 /# 7 /("hvb-depot")
        contentAsString(response) must /("data") /# 0 /# 8 /("kalixa")
        contentAsString(response) must /("data") /# 0 /# 9 /("n26")
        contentAsString(response) must /("data") /# 0 /# 10 /("total")

        contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
        contentAsString(response) must /("data") /# 25 /# 1 /(543.87)
        contentAsString(response) must /("data") /# 25 /# 2 /(627.95)
        contentAsString(response) must /("data") /# 25 /# 3 /(-221.03)
        contentAsString(response) must /("data") /# 25 /# 4 /(0)
        contentAsString(response) must /("data") /# 25 /# 5 /(0)
        contentAsString(response) must /("data") /# 25 /# 6 /(1359.73)
        contentAsString(response) must /("data") /# 25 /# 7 /(0)
        contentAsString(response) must /("data") /# 25 /# 8 /(0)
        contentAsString(response) must /("data") /# 25 /# 9 /(4414.14)
        contentAsString(response) must /("data") /# 25 /# 10 /(6724.66)
      }

      "retrieve timeseries for single account: db" in new WithApplication {
        val request = FakeRequest(GET, "/accounts/timeseries?startDate=2014-01-01&endDate=2016-03-31&sumRange=YYYY-MM&accounts=1")
        val response = route(app, request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        contentAsString(response) must /("data") /# 0 /# 0 /("date")
        contentAsString(response) must /("data") /# 0 /# 1 /("db")
        contentAsString(response) must /("data") /# 0 /# 2 /("total")

        contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
        contentAsString(response) must /("data") /# 25 /# 1 /(627.95)
        contentAsString(response) must /("data") /# 25 /# 2 /(627.95)
      }

      "retrieve timeseries for single account sharing enabled: dkb" in new WithApplication {
        val request = FakeRequest(GET, "/accounts/timeseries?startDate=2014-01-01&endDate=2016-03-31&sumRange=YYYY-MM&accounts=7")
        val response = route(app, request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        contentAsString(response) must /("data") /# 0 /# 0 /("date")
        contentAsString(response) must /("data") /# 0 /# 1 /("dkb")
        contentAsString(response) must /("data") /# 0 /# 2 /("total")

        contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
        contentAsString(response) must /("data") /# 25 /# 1 /(-110.515)
        contentAsString(response) must /("data") /# 25 /# 2 /(-110.515)
      }

      "retrieve timeseries for single account sharing disabled: dkb" in new WithApplication {
        val request = FakeRequest(GET, "/accounts/timeseries?isSharingRatioEnabled=False&startDate=2014-01-01&endDate=2016-03-31&sumRange=YYYY-MM&accounts=7")
        val response = route(app, request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        contentAsString(response) must /("data") /# 0 /# 0 /("date")
        contentAsString(response) must /("data") /# 0 /# 1 /("dkb")
        contentAsString(response) must /("data") /# 0 /# 2 /("total")

        contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
        contentAsString(response) must /("data") /# 25 /# 1 /(-221.03)
        contentAsString(response) must /("data") /# 25 /# 2 /(-221.03)
      }
    }

  }


}
