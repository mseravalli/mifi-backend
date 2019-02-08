package controllers

import org.specs2.matcher.JsonMatchers
import play.api.mvc.MultipartFormData
import play.api.mvc.MultipartFormData.FilePart
import play.api.test._
import play.api.libs.Files._

class ImportControllerIntegration extends PlaySpecification with JsonMatchers {
  "ImportController" should {
    "import db" in new WithApplication() {
      val accountId = 1
      val filePath = "test/db.csv"

      val amountDeleted = 10.10
      val balanceRequest = FakeRequest(GET, s"/accounts/${accountId}?endDate=2100-12-31")
      val balanceResponse = route(app, balanceRequest).get
      val balance = BigDecimal((contentAsJson(balanceResponse) \ "balance").get.toString())

      val file = play.api.libs.Files.SingletonTemporaryFileCreator.create(path = java.nio.file.Paths.get(filePath))
      val part = FilePart[TemporaryFile](key = "csv", filename = "the.file", contentType = None, ref = file)
      val formData = MultipartFormData[TemporaryFile](
        dataParts = Map("importAccountId" -> Seq(accountId.toString)),
        files = Seq(part),
        badParts = Seq()
      )
      val request = FakeRequest(POST, "/import")
        .withMultipartFormDataBody(formData)
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentAsString(response) must /("account") / ("account" -> accountId)
      val finalBalanceAsString = (balance - amountDeleted).toString
      contentAsString(response) must /("account") / ("balance" -> (finalBalanceAsString))
    }

    "import hvb" in new WithApplication() {
      val accountId = 3
      val filePath = "test/hvb.csv"

      val amountDeleted = BigDecimal(10.10)
      val balanceRequest = FakeRequest(GET, s"/accounts/${accountId}?endDate=2100-12-31")
      val balanceResponse = route(app, balanceRequest).get
      val balance = BigDecimal((contentAsJson(balanceResponse) \ "balance").get.toString())

      val file = play.api.libs.Files.SingletonTemporaryFileCreator.create(path = java.nio.file.Paths.get(filePath))
      val part = FilePart[TemporaryFile](key = "csv", filename = "the.file", contentType = None, ref = file)
      val formData = MultipartFormData[TemporaryFile](
        dataParts = Map("importAccountId" -> Seq(accountId.toString)),
        files = Seq(part),
        badParts = Seq()
      )
      val request = FakeRequest(POST, "/import")
        .withMultipartFormDataBody(formData)
      val response = route(app, request).get
      status(response) must equalTo(OK)
      contentAsString(response) must /("account") / ("account" -> accountId)
      val finalBalanceAsString = (balance - amountDeleted).toString
      contentAsString(response) must /("account") / ("balance" -> (finalBalanceAsString))
    }

    "import dkb" in new WithApplication() {
      val accountId = 7
      val filePath = "test/dkb.csv"

      val amountDeleted = 10.10
      val balanceRequest = FakeRequest(GET, s"/accounts/${accountId}?endDate=2100-12-31")
      val balanceResponse = route(app, balanceRequest).get
      val balance = BigDecimal((contentAsJson(balanceResponse) \ "balance").get.toString())

      val file = play.api.libs.Files.SingletonTemporaryFileCreator.create(path = java.nio.file.Paths.get(filePath))
      val part = FilePart[TemporaryFile](key = "csv", filename = "the.file", contentType = None, ref = file)
      val formData = MultipartFormData[TemporaryFile](
        dataParts = Map("importAccountId" -> Seq(accountId.toString)),
        files = Seq(part),
        badParts = Seq()
      )
      val request = FakeRequest(POST, "/import")
        .withMultipartFormDataBody(formData)
      val response = route(app, request).get
      status(response) must equalTo(OK)
      val finalBalanceAsString = (balance - amountDeleted).toString
      contentAsString(response) must /("account") / ("balance" -> (finalBalanceAsString))
    }
  }

}
