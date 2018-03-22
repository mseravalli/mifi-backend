package helpers

import slick.jdbc.JdbcProfile

/**
 * Set up the Guice injector and provide the mechanism for return objects from the dependency graph.
 */
object Global { // extends GlobalSettings {
  val slickDriver = "slick.jdbc.PostgresProfile"
  val jdbcDriver = "org.postgresql.Driver"
  val url = "jdbc:postgresql://localhost:5432/mifi"
  val outputFolder = "../app"
  val pkg = "models"
  val user = Some("mifi")
  val password = Some("alcolismo")

  val driver: JdbcProfile =
    Class.forName(slickDriver + "$").getField("MODULE$").get(null).asInstanceOf[JdbcProfile]
  val dbFactory = driver.api.Database
  val db = dbFactory.forURL(url, driver = jdbcDriver,
    user = user.getOrElse(null), password = password.getOrElse(null), keepAliveConnection = true)

}
