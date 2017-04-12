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

        response.map(x => println(x.toString))

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

    "readTransactions" in {
      running(FakeApplication()) {
        val request = FakeRequest(GET, baseUrl + "/transactions?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility,living,health,free%20time,work%20and%20training&subCategories=")
        val response = route(request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        response.map(x => println(x.toString))

        contentAsString(response) must /("transactions") /# 0   /("id" -> 3222)
        contentAsString(response) must /("transactions") /# 200 /("id" -> 3867)
        contentAsString(response) must /("transactions") /# 400 /("id" -> 3415)
        contentAsString(response) must /("transactions") /# 600 /("id" -> 3768)
      }
    }

    "readCategories" in {
      running(FakeApplication()) {
        val request = FakeRequest(GET, baseUrl + "/categories")
        val response = route(request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        response.map(x => println(x.toString))

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
    }

    "aggregateCategories" in {
      running(FakeApplication()) {
        val request = FakeRequest(GET, baseUrl + "/categories/aggregate?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility,living,health,free time")
        val response = route(request).get
        status(response) must equalTo(OK)
        contentType(response) must beSome.which(_ == "application/json")

        response.map(x => println(x.toString))

        // test the headers
        contentAsString(response) must /("data") /#0 /#0 /("date")
        contentAsString(response) must /("data") /#0 /#1 /("total")
        contentAsString(response) must /("data") /#0 /#2 /("finance")
        contentAsString(response) must /("data") /#0 /#3 /("free time")
        contentAsString(response) must /("data") /#0 /#4 /("health")

        // test the data
        contentAsString(response) must /("data") /#1 /#0 /("2014-01")
        contentAsString(response) must /("data") /#1 /#1 /(-360.08)
        contentAsString(response) must /("data") /#1 /#2 /(995.05)
        contentAsString(response) must /("data") /#1 /#3 /(-758.33)
        contentAsString(response) must /("data") /#1 /#4 /(0)

        contentAsString(response) must /("data") /#2 /#0 /("2014-02")
        contentAsString(response) must /("data") /#2 /#1 /(-1167.18)
        contentAsString(response) must /("data") /#2 /#2 /(995.52)
        contentAsString(response) must /("data") /#2 /#3 /(-1104.69)
        contentAsString(response) must /("data") /#2 /#4 /(-227.04)
      }
    }
  }
}