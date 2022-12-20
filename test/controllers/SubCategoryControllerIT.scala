package controllers

import org.specs2.matcher.JsonMatchers
import play.api.test._

class SubCategoryControllerIT extends PlaySpecification with JsonMatchers {

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
      contentAsString(response) must /("data") /#0 /#4 /("electricity in")
      contentAsString(response) must /("data") /#0 /#5 /("electricity out")
      contentAsString(response) must /("data") /#0 /#6 /("furniture and accessories in")
      contentAsString(response) must /("data") /#0 /#7 /("furniture and accessories out")
      contentAsString(response) must /("data") /#0 /#8 /("general in")
      contentAsString(response) must /("data") /#0 /#9 /("general out")
      contentAsString(response) must /("data") /#0 /#10 /("internet in")
      contentAsString(response) must /("data") /#0 /#11 /("internet out")

      // test the data
      contentAsString(response) must /("data") /#6 /#0 /("2014-06")
      contentAsString(response) must /("data") /#6 /#1 /(-280.0)
      contentAsString(response) must /("data") /#6 /#2 /(-280.0)
      contentAsString(response) must /("data") /#6 /#3 /(0.0)
      contentAsString(response) must /("data") /#6 /#4 /(0.0)
      contentAsString(response) must /("data") /#6 /#5 /(-10.0)
      contentAsString(response) must /("data") /#6 /#6 /(0.0)
      contentAsString(response) must /("data") /#6 /#7 /(0.0)
      contentAsString(response) must /("data") /#6 /#8 /(0.0)
      contentAsString(response) must /("data") /#6 /#9 /(0.0)
      contentAsString(response) must /("data") /#6 /#10 /(0.0)
      contentAsString(response) must /("data") /#6 /#11 /(-10.0)

      contentAsString(response) must /("data") /#9 /#0 /("2014-09")
      contentAsString(response) must /("data") /#9 /#1 /(-280.0)
      contentAsString(response) must /("data") /#9 /#2 /(-280.0)
      contentAsString(response) must /("data") /#9 /#3 /(0.0)
      contentAsString(response) must /("data") /#9 /#4 /(0.0)
      contentAsString(response) must /("data") /#9 /#5 /(-10.0)
      contentAsString(response) must /("data") /#9 /#6 /(0.0)
      contentAsString(response) must /("data") /#9 /#7 /(0.0)
      contentAsString(response) must /("data") /#9 /#8 /(0.0)
      contentAsString(response) must /("data") /#9 /#9 /(0.0)
      contentAsString(response) must /("data") /#9 /#10 /(0.0)
      contentAsString(response) must /("data") /#9 /#11 /(-10.0)
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

}
