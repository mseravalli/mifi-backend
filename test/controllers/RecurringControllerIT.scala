package controllers

import org.specs2.matcher.JsonMatchers
import play.api.test._

class RecurringControllerIT extends PlaySpecification with JsonMatchers {

  "Recurring" should {
    "read recurring Transactions" in new WithApplication() {
      val request = FakeRequest(
        GET,
        "/recurring?sumRange=yyyy-mm&startDate=2012-11-11&endDate=2015-11-11&categories=house,other,finance,mobility,living,health,free%20time,work%20and%20training&subCategories="
      )
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "application/json")

      contentAsString(response) must /(
        "transactions"
      ) /# 0 / ("accountName" -> "bcard")
      contentAsString(response) must /(
        "transactions"
      ) /# 0 / ("amount" -> -75.87)
      contentAsString(response) must /(
        "transactions"
      ) /# 0 / ("category" -> "living")
      contentAsString(response) must /(
        "transactions"
      ) /# 0 / ("subCategory" -> "pets")
    }
  }

}
