package controllers

import org.specs2.matcher.JsonMatchers
import play.api.test._

class HealthControllerIT extends PlaySpecification with JsonMatchers {
  "Health" should {
    "be healthy" in new WithApplication() {
      val request = FakeRequest(GET, "/healthz")
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentType(response) must beSome.which(_ == "text/plain")

      contentAsString(response) must equalTo("OK")
    }
  }
}
