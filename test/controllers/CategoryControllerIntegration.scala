package controllers

import org.specs2.matcher.JsonMatchers
import play.api.mvc.MultipartFormData
import play.api.mvc.MultipartFormData.FilePart
import play.api.test._
import play.api.libs.Files._

class CategoryControllerIntegration extends PlaySpecification with JsonMatchers {
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
      val request = FakeRequest(GET, "/categories/aggregate?sumRange=yyyy-mm&startDate=2014-01-01&endDate=2016-03-31&categories=house,other,finance,mobility,living,health,free time&accounts=")
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

}
