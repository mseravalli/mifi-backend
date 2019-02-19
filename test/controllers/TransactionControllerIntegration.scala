package controllers

import org.specs2.matcher.JsonMatchers
import play.api.mvc.MultipartFormData
import play.api.mvc.MultipartFormData.FilePart
import play.api.test._
import play.api.libs.Files._

class TransactionControllerIntegration extends PlaySpecification with JsonMatchers {

  "Timeseries" should {
    "retrieve timeseries for all accounts" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/timeseries?startDate=2014-01-01&endDate=2016-03-31&sumRange=YYYY-MM")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("data") /# 0 /# 0 /("date")
      contentAsString(response) must /("data") /# 0 /# 1 /("bcard")
      contentAsString(response) must /("data") /# 0 /# 2 /("db")
      contentAsString(response) must /("data") /# 0 /# 3 /("dkb")
      contentAsString(response) must /("data") /# 0 /# 4 /("hvb")
      contentAsString(response) must /("data") /# 0 /# 5 /("hvb-depot")
      contentAsString(response) must /("data") /# 0 /# 6 /("kalixa")
      contentAsString(response) must /("data") /# 0 /# 7 /("n26")
      contentAsString(response) must /("data") /# 0 /# 8 /("total")

      contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
      contentAsString(response) must /("data") /# 25 /# 1 /(543.87)
      contentAsString(response) must /("data") /# 25 /# 2 /(627.95)
      contentAsString(response) must /("data") /# 25 /# 3 /(0)
      contentAsString(response) must /("data") /# 25 /# 4 /(1359.73)
      contentAsString(response) must /("data") /# 25 /# 5 /(0)
      contentAsString(response) must /("data") /# 25 /# 6 /(-221.03)
      contentAsString(response) must /("data") /# 25 /# 7 /(4414.14)
      contentAsString(response) must /("data") /# 25 /# 8 /(6724.66)
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
  }

  "Transactions" should {
    "read single Transactions" in new WithApplication() {
      val request = FakeRequest(GET, "/transactions?sumRange=yyyy-mm&startDate=2012-11-11&endDate=2012-11-11&categories=house,other,finance,mobility,living,health,free%20time,work%20and%20training&subCategories=")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("transactions") /# 0   /("accountName" -> "bcard")
      contentAsString(response) must /("transactions") /# 0   /("amount" -> -75.87)
      contentAsString(response) must /("transactions") /# 0   /("category" -> "living")
      contentAsString(response) must /("transactions") /# 0   /("subCategory" -> "pets")
    }
  }

}
