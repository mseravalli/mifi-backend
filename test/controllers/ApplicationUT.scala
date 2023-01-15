package helpers

import play.api.test._
import play.api.test.Helpers._

/** We focus here on testing the controller only - not the infrastructure in
  * front or behind it. Using dependency injection allows the application
  * controller to become testable. It is conceivable that you might have a unit
  * test for the controller if there is enough logic contained in the method
  * that makes it worth testing - the integration test might offer a more useful
  * test if there is not given that you are then testing that the route is
  * configured properly.
  */
class ApplicationUT extends PlaySpecification {

  "Application" should {

    "format amount" in {
      Formatter.formatAmount("11") must beEqualTo("11").ignoreCase
      Formatter.formatAmount("11+") must beEqualTo("11").ignoreCase
      Formatter.formatAmount("11-") must beEqualTo("-11").ignoreCase
      Formatter.formatAmount("+11") must beEqualTo("11").ignoreCase
      Formatter.formatAmount("-11") must beEqualTo("-11").ignoreCase

      // with comma
      Formatter.formatAmount("11,0") must beEqualTo("11.0").ignoreCase
      Formatter.formatAmount("11,0+") must beEqualTo("11.0").ignoreCase
      Formatter.formatAmount("11,0-") must beEqualTo("-11.0").ignoreCase
      Formatter.formatAmount("+11,0") must beEqualTo("11.0").ignoreCase
      Formatter.formatAmount("-11,0") must beEqualTo("-11.0").ignoreCase

      Formatter.formatAmount("11,00") must beEqualTo("11.00").ignoreCase
      Formatter.formatAmount("11,00+") must beEqualTo("11.00").ignoreCase
      Formatter.formatAmount("11,00-") must beEqualTo("-11.00").ignoreCase
      Formatter.formatAmount("+11,00") must beEqualTo("11.00").ignoreCase
      Formatter.formatAmount("-11,00") must beEqualTo("-11.00").ignoreCase

      // with point
      Formatter.formatAmount("11.0") must beEqualTo("11.0").ignoreCase
      Formatter.formatAmount("11.0+") must beEqualTo("11.0").ignoreCase
      Formatter.formatAmount("11.0-") must beEqualTo("-11.0").ignoreCase
      Formatter.formatAmount("+11.0") must beEqualTo("11.0").ignoreCase
      Formatter.formatAmount("-11.0") must beEqualTo("-11.0").ignoreCase

      Formatter.formatAmount("11.00") must beEqualTo("11.00").ignoreCase
      Formatter.formatAmount("11.00+") must beEqualTo("11.00").ignoreCase
      Formatter.formatAmount("11.00-") must beEqualTo("-11.00").ignoreCase
      Formatter.formatAmount("+11.00") must beEqualTo("11.00").ignoreCase
      Formatter.formatAmount("-11.00") must beEqualTo("-11.00").ignoreCase

      Formatter.formatAmount("1.234,56+") must beEqualTo("1234.56").ignoreCase
      Formatter.formatAmount("-1.234,56") must beEqualTo("-1234.56").ignoreCase
      Formatter.formatAmount("1.234,56-") must beEqualTo("-1234.56").ignoreCase

      Formatter.formatAmount("1,234.56") must beEqualTo("1234.56").ignoreCase
      Formatter.formatAmount("-1,234.56") must beEqualTo("-1234.56").ignoreCase
    }
  }
}
