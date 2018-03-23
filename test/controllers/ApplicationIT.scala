package controllers

import org.specs2.matcher.JsonMatchers
import play.api.test._
import play.api.test.Helpers._
import scala.concurrent.ExecutionContext.Implicits.global

/**
 * You can mock out a whole application including requests, plugins etc.
 * For more information, consult the wiki.
 */
class ApplicationIT extends PlaySpecification with JsonMatchers {
  "Health should" should {
    "be healthy" in new WithApplication() {
      val request = FakeRequest(GET, "/health")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "text/plain")

      contentAsString(response) must equalTo("OK")
    }
  }

  "Accounts should" should {
    "read accounts" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts?endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("accounts") /# 1 /("account" -> "db")
      contentAsString(response) must /("accounts") /# 1 /("balance" -> 7023.44)
      contentAsString(response) must /("accounts") /# 1 /("currencyPos" -> 17)
      contentAsString(response) must /("accounts") /# 1 /("finalRow" -> "Account balance")

      contentAsString(response) must /("accounts") /# 2 /("account" -> "hvb")
      contentAsString(response) must /("accounts") /# 2 /("balance" -> 19151.32)
      contentAsString(response) must /("accounts") /# 2 /("currencyPos" -> 7)
    }

    "read balance" in new WithApplication() {
      val request = FakeRequest(GET, "/accounts/db?endDate=2015-12-31")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("account" -> "db")
      contentAsString(response) must /("balance" -> 7023.44)
      contentAsString(response) must /("currencyPos" -> 17)
      contentAsString(response) must /("finalRow" -> "Account balance")
    }
  }

  "Timeseries should" should {
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
      contentAsString(response) must /("data") /# 0 /# 5 /("number26")
      contentAsString(response) must /("data") /# 0 /# 6 /("total")

      contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
      contentAsString(response) must /("data") /# 25 /# 1 /(0.0)
      contentAsString(response) must /("data") /# 25 /# 2 /(7022.4400)
      contentAsString(response) must /("data") /# 25 /# 3 /(18900.7900)
      contentAsString(response) must /("data") /# 25 /# 4 /(200.2100)
      contentAsString(response) must /("data") /# 25 /# 5 /(0.0)
      contentAsString(response) must /("data") /# 25 /# 6 /(26123.4400)
    }

    "retrieve timeseries for single account: db" in new WithApplication {
      val request = FakeRequest(GET, "/accounts/timeseries?startDate=2014-01-01&endDate=2016-03-31&sumRange=YYYY-MM&accounts=db")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("data") /# 0 /# 0 /("date")
      contentAsString(response) must /("data") /# 0 /# 1 /("db")
      contentAsString(response) must /("data") /# 0 /# 2 /("total")

      contentAsString(response) must /("data") /# 25 /# 0 /("2016-01")
      contentAsString(response) must /("data") /# 25 /# 1 /(7022.4400)
      contentAsString(response) must /("data") /# 25 /# 2 /(7022.4400)
      }
    }

  "Timeseries should" should {
    "read Transactions" in new WithApplication() {
      val request = FakeRequest(GET, "/transactions?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility,living,health,free%20time,work%20and%20training&subCategories=")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /("transactions") /# 0   /("id" -> 388)
      contentAsString(response) must /("transactions") /# 200 /("id" -> 38)
      contentAsString(response) must /("transactions") /# 400 /("id" -> 4107)
      contentAsString(response) must /("transactions") /# 600 /("id" -> 3931)
    }
  }

    
  "Categories should" should {
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
      contentAsString(response) must /("data") /#1 /#1 /(-360.08)
      contentAsString(response) must /("data") /#1 /#2 /(-1355.13)
      contentAsString(response) must /("data") /#1 /#3 /(995.05)
      contentAsString(response) must /("data") /#1 /#4 /(995.05)
      contentAsString(response) must /("data") /#1 /#5 /(-758.33)
      contentAsString(response) must /("data") /#1 /#6 /(0)

      contentAsString(response) must /("data") /#2 /#0 /("2014-02")
      contentAsString(response) must /("data") /#2 /#1 /(-1167.18)
      contentAsString(response) must /("data") /#2 /#2 /(-2162.7)
      contentAsString(response) must /("data") /#2 /#3 /(995.52)
      contentAsString(response) must /("data") /#2 /#4 /(995.52)
      contentAsString(response) must /("data") /#2 /#5 /(-1104.69)
      contentAsString(response) must /("data") /#2 /#6 /(-227.04)
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
      contentAsString(response) must /("data") /#1 /#0 /("finance")
      contentAsString(response) must /("data") /#1 /#1 /(18772.30)

      contentAsString(response) must /("data") /#2 /#0 /("work and training")
      contentAsString(response) must /("data") /#2 /#1 /(59420.98)
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
      contentAsString(response) must /("data") /#1 /#0 /("free time")
      contentAsString(response) must /("data") /#1 /#1 /(16807.58)

      contentAsString(response) must /("data") /#3 /#0 /("house")
      contentAsString(response) must /("data") /#3 /#1 /(17214.05)

      contentAsString(response) must /("data") /#6 /#0 /("other")
      contentAsString(response) must /("data") /#6 /#1 /(12370.23)
    }
  }

  "SubCategories should" should {
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
      contentAsString(response) must /("data") /#6 /#1 /(-554.9)
      contentAsString(response) must /("data") /#6 /#2 /(-554.9)
      contentAsString(response) must /("data") /#6 /#3 /(0.0)
      contentAsString(response) must /("data") /#6 /#4 /(0.0)
      contentAsString(response) must /("data") /#6 /#5 /(0.0)
      contentAsString(response) must /("data") /#6 /#6 /(0.0)
      contentAsString(response) must /("data") /#6 /#7 /(-19.9)
      contentAsString(response) must /("data") /#6 /#8 /(-15.0)
      contentAsString(response) must /("data") /#6 /#9 /(-520.0)

      contentAsString(response) must /("data") /#9 /#0 /("2014-09")
      contentAsString(response) must /("data") /#9 /#1 /(-594.9)
      contentAsString(response) must /("data") /#9 /#2 /(-594.9)
      contentAsString(response) must /("data") /#9 /#3 /(0.0)
      contentAsString(response) must /("data") /#9 /#4 /(-40.0)
      contentAsString(response) must /("data") /#9 /#5 /(0.0)
      contentAsString(response) must /("data") /#9 /#6 /(0.0)
      contentAsString(response) must /("data") /#9 /#7 /(-19.9)
      contentAsString(response) must /("data") /#9 /#8 /(-15.0)
      contentAsString(response) must /("data") /#9 /#9 /(-520.0)
    }

    "compute total incoming flow per SubCategory" in new WithApplication() {
      val request = FakeRequest(GET, "/subcategories/in?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2017-05-30&categories=work%20and%20training&subCategories=salary,travel,contribution,material,training,general")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      // test the headers
      contentAsString(response) must /("data") /#0 /#0 /("subCategory")
      contentAsString(response) must /("data") /#0 /#1 /("amount")

      // test the data
      contentAsString(response) must /("data") /#2 /#0 /("salary")
      contentAsString(response) must /("data") /#2 /#1 /(90419.97)

      contentAsString(response) must /("data") /#3 /#0 /("travel")
      contentAsString(response) must /("data") /#3 /#1 /(8671.78)

      contentAsString(response) must /("data") /#1 /#0 /("contribution")
      contentAsString(response) must /("data") /#1 /#1 /(2753.53)
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
      contentAsString(response) must /("data") /#2 /#0 /("material")
      contentAsString(response) must /("data") /#2 /#1 /(136.94)

      contentAsString(response) must /("data") /#3 /#0 /("training")
      contentAsString(response) must /("data") /#3 /#1 /(111)

      contentAsString(response) must /("data") /#1 /#0 /("general")
      contentAsString(response) must /("data") /#1 /#1 /(13)
    }
  }
}
