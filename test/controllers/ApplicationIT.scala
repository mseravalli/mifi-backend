package controllers

import org.specs2.matcher.JsonMatchers
import play.api.mvc.MultipartFormData
import play.api.mvc.MultipartFormData.FilePart
import play.api.test._
import play.api.test.Helpers._
import play.api.libs.Files._

import scala.concurrent.ExecutionContext.Implicits.global

/**
 * You can mock out a whole application including requests, plugins etc.
 * For more information, consult the wiki.
 */
class ApplicationIT extends PlaySpecification with JsonMatchers {
  "Health" should {
    "be healthy" in new WithApplication() {
      val request = FakeRequest(GET, "/health")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "text/plain")

      contentAsString(response) must equalTo("OK")
    }
  }

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

      contentAsString(response) must /("accounts") /# 2 /("name" -> "hvb")
      contentAsString(response) must /("accounts") /# 2 /("balance" -> 1330.73)
      contentAsString(response) must /("accounts") /# 2 /("currencyPos" -> 7)
    }

    "read single account details" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/1?endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("name" -> "db")
      contentAsString(response) must /("balance" -> 590.43)
      contentAsString(response) must /("currencyPos" -> 17)
      contentAsString(response) must /("finalRow" -> "Account balance")
    }
  }

  "Timeseries" should {
    "retrieve timeseries for all accounts" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/timeseries?startDate=2014-01-01&endDate=2016-03-31&sumRange=YYYY-MM")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("data") /# 0 /# 0 /("date")
      contentAsString(response) must /("data") /# 0 /# 1 /("bcard")
      contentAsString(response) must /("data") /# 0 /# 2 /("db")
      contentAsString(response) must /("data") /# 0 /# 3 /("hvb")
      contentAsString(response) must /("data") /# 0 /# 4 /("kalixa")
      contentAsString(response) must /("data") /# 0 /# 5 /("n26")
      contentAsString(response) must /("data") /# 0 /# 6 /("total")

      contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
      contentAsString(response) must /("data") /# 25 /# 1 /(543.87)
      contentAsString(response) must /("data") /# 25 /# 2 /(627.95)
      contentAsString(response) must /("data") /# 25 /# 3 /(1359.73)
      contentAsString(response) must /("data") /# 25 /# 4 /(-221.03)
      contentAsString(response) must /("data") /# 25 /# 5 /(4414.14)
      contentAsString(response) must /("data") /# 25 /# 6 /(6724.66)
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

  "Timeseries" should {
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

    
  "Categories" should {
    "read Categories" in new WithApplication() {
      val request = FakeRequest(GET, "/categories")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      // check if all categories are ok
      contentAsString(response) must /("categories") */("name" -> "house")
      contentAsString(response) must /("categories") */("name" -> "other")
      contentAsString(response) must /("categories") */("name" -> "finance")
      contentAsString(response) must /("categories") */("name" -> "mobility")
      contentAsString(response) must /("categories") */("name" -> "living")
      contentAsString(response) must /("categories") */("name" -> "health")
      contentAsString(response) must /("categories") */("name" -> "free time")
      contentAsString(response) must /("categories") */("name" -> "work and training")

      // check subcategories for house
      contentAsString(response) must /("categories") /# 0 /("subCategories") */("name" -> "rent")
      contentAsString(response) must /("categories") /# 0 /("subCategories") */("name" -> "electricity")
      contentAsString(response) must /("categories") /# 0 /("subCategories") */("name" -> "general")
      contentAsString(response) must /("categories") /# 0 /("subCategories") */("name" -> "internet")
      contentAsString(response) must /("categories") /# 0 /("subCategories") */("name" -> "phone")
      contentAsString(response) must /("categories") /# 0 /("subCategories") */("name" -> "furniture and accessories")
    }

    "aggregate Categories" in new WithApplication() {
      val request = FakeRequest(GET, "/categories/aggregate?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility,living,health,free time")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      // test the headers
      contentAsString(response) must /("data") /#0 /#0 /("date")
      contentAsString(response) must /("data") /#0 /#1 /("total")
      contentAsString(response) must /("data") /#0 /#2 /("min")
      contentAsString(response) must /("data") /#0 /#3 /("max")
      contentAsString(response) must /("data") /#0 /#4 /("finance")
      contentAsString(response) must /("data") /#0 /#5 /("free time")
      contentAsString(response) must /("data") /#0 /#6 /("health")

      // test the data
      contentAsString(response) must /("data") /#1 /#0 /("2014-01")
      contentAsString(response) must /("data") /#1 /#1 /(-1190.17)
      contentAsString(response) must /("data") /#1 /#2 /(-1190.17)
      contentAsString(response) must /("data") /#1 /#3 /(0.0)
      contentAsString(response) must /("data") /#1 /#4 /(-137.41)
      contentAsString(response) must /("data") /#1 /#5 /(-225.12)
      contentAsString(response) must /("data") /#1 /#6 /(-140.55)

      contentAsString(response) must /("data") /#2 /#0 /("2014-02")
      contentAsString(response) must /("data") /#2 /#1 /(-945.79)
      contentAsString(response) must /("data") /#2 /#2 /(-945.79)
      contentAsString(response) must /("data") /#2 /#3 /(0)
      contentAsString(response) must /("data") /#2 /#4 /(-62.42)
      contentAsString(response) must /("data") /#2 /#5 /(-158.45)
      contentAsString(response) must /("data") /#2 /#6 /(-116.76)
    }

    "compute total incoming flow per Category" in new WithApplication() {
      val request = FakeRequest(GET, "/categories/in?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility,living,health,free%20time,work%20and%20training&subCategories=")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      // test the headers
      contentAsString(response) must /("data") /#0 /#0 /("category")
      contentAsString(response) must /("data") /#0 /#1 /("amount")

      // test the data
      contentAsString(response) must /("data") /#1 /#0 /("work and training")
      contentAsString(response) must /("data") /#1 /#1 /(34663.13)
    }

    "compute total outgoing flow per Category" in new WithApplication() {
      val request = FakeRequest(GET, "/categories/out?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility,living,health,free%20time,work%20and%20training&subCategories=")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      // test the headers
      contentAsString(response) must /("data") /#0 /#0 /("category")
      contentAsString(response) must /("data") /#0 /#1 /("amount")

      // test the data
      contentAsString(response) must /("data") /#1 /#0 /("finance")
      contentAsString(response) must /("data") /#1 /#1 /(2577.44)

      contentAsString(response) must /("data") /#3 /#0 /("health")
      contentAsString(response) must /("data") /#3 /#1 /(2675.62)

      contentAsString(response) must /("data") /#6 /#0 /("mobility")
      contentAsString(response) must /("data") /#6 /#1 /(2428.10)
    }
  }

  "SubCategories" should {
    "aggregate SubCategories" in new WithApplication() {
      val request = FakeRequest(GET, "/subcategories/aggregate?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2017-07-31&categories=house&subCategories=electricity,furniture%20and%20accessories,general,internet,phone,rent")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      // test the headers
      contentAsString(response) must /("data") /#0 /#0 /("date")
      contentAsString(response) must /("data") /#0 /#1 /("total")
      contentAsString(response) must /("data") /#0 /#2 /("min")
      contentAsString(response) must /("data") /#0 /#3 /("max")
      contentAsString(response) must /("data") /#0 /#4 /("electricity")
      contentAsString(response) must /("data") /#0 /#5 /("furniture and accessories")
      contentAsString(response) must /("data") /#0 /#6 /("general")
      contentAsString(response) must /("data") /#0 /#7 /("internet")

      // test the data
      contentAsString(response) must /("data") /#6 /#0 /("2014-06")
      contentAsString(response) must /("data") /#6 /#1 /(-280.0)
      contentAsString(response) must /("data") /#6 /#2 /(-280.0)
      contentAsString(response) must /("data") /#6 /#3 /(0.0)
      contentAsString(response) must /("data") /#6 /#4 /(-10.0)
      contentAsString(response) must /("data") /#6 /#5 /(0.0)
      contentAsString(response) must /("data") /#6 /#6 /(0.0)
      contentAsString(response) must /("data") /#6 /#7 /(-10.0)
      contentAsString(response) must /("data") /#6 /#8 /(-10.0)
      contentAsString(response) must /("data") /#6 /#9 /(-250.0)

      contentAsString(response) must /("data") /#9 /#0 /("2014-09")
      contentAsString(response) must /("data") /#9 /#1 /(-280.0)
      contentAsString(response) must /("data") /#9 /#2 /(-280.0)
      contentAsString(response) must /("data") /#9 /#3 /(0.0)
      contentAsString(response) must /("data") /#9 /#4 /(-10.0)
      contentAsString(response) must /("data") /#9 /#5 /(0.0)
      contentAsString(response) must /("data") /#9 /#6 /(0.0)
      contentAsString(response) must /("data") /#9 /#7 /(-10.0)
      contentAsString(response) must /("data") /#9 /#8 /(-10.0)
      contentAsString(response) must /("data") /#9 /#9 /(-250.0)
    }

    "compute total incoming flow per SubCategory" in new WithApplication() {
      val request = FakeRequest(GET, "/subcategories/in?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-05-30&categories=work%20and%20training&subCategories=salary,travel,contribution,material,training,general")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      // test the headers
      contentAsString(response) must /("data") /#0 /#0 /("subCategory")
      contentAsString(response) must /("data") /#0 /#1 /("amount")

      // test the data
      contentAsString(response) must /("data") /#1 /#0 /("salary")
      contentAsString(response) must /("data") /#1 /#1 /(38451.2)
    }

    "compute total outgoing flow per SubCategory" in new WithApplication() {
      val request = FakeRequest(GET, "/subcategories/out?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2017-07-31&categories=work%20and%20training&subCategories=salary,travel,contribution,material,training,general")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      // test the headers
      contentAsString(response) must /("data") /#0 /#0 /("subCategory")
      contentAsString(response) must /("data") /#0 /#1 /("amount")

      // test the data
      contentAsString(response) must /("data") /#1 /#0 /("training")
      contentAsString(response) must /("data") /#1 /#1 /(2372.45)
    }
  }

  "ImportController" should {
    "import hvb-depot" in new WithApplication() {
      val accountId = 6
      val balanceRequest = FakeRequest(GET, s"/accounts/${accountId}?endDate=2100-12-31")
      val balanceResponse = route(app, balanceRequest).get
      val balance = (contentAsJson(balanceResponse) \ "balance").get.toString().toDouble

      val file = play.api.libs.Files.SingletonTemporaryFileCreator.create(path = java.nio.file.Paths.get("test/hvb-depot.csv"))
      val part = FilePart[TemporaryFile](key = "csv", filename = "the.file", contentType = None, ref = file)
      val formData = MultipartFormData[TemporaryFile](
        dataParts = Map("importAccountId" -> Seq(accountId.toString)),
        files = Seq(part),
        badParts = Seq()
      )
      val request = FakeRequest(POST, "/import" )
        .withMultipartFormDataBody(formData)
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentAsString(response) must /("account") /("account" -> accountId)
      contentAsString(response) must /("account") /("balance" -> (balance - 10))
    }

    "import hvb" in new WithApplication() {
      val accountId = 3
      val balanceRequest = FakeRequest(GET, s"/accounts/${accountId}?endDate=2100-12-31")
      val balanceResponse = route(app, balanceRequest).get
      val balance = (contentAsJson(balanceResponse) \ "balance").get.toString().toDouble

      val file = play.api.libs.Files.SingletonTemporaryFileCreator.create(path = java.nio.file.Paths.get("test/hvb.csv"))
      val part = FilePart[TemporaryFile](key = "csv", filename = "the.file", contentType = None, ref = file)
      val formData = MultipartFormData[TemporaryFile](
        dataParts = Map("importAccountId" -> Seq(accountId.toString)),
        files = Seq(part),
        badParts = Seq()
      )
      val request = FakeRequest(POST, "/import" )
        .withMultipartFormDataBody(formData)
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentAsString(response) must /("account") /("account" -> accountId)
      contentAsString(response) must /("account") /("balance" -> (balance - 10))
    }
  }
}
