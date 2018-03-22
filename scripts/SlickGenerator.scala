import java.time.{LocalDate, Month}
import java.io._
import util.Random

import slick.codegen.SourceCodeGenerator
import slick.model.Model
import scala.collection.mutable

import scala.concurrent.{ExecutionContext, Await}
import scala.concurrent.duration.Duration
import slick.backend.DatabaseConfig
import slick.{model => m}
import slick.driver.JdbcProfile
import slick.util.ConfigExtensionMethods.configExtensionMethods

/**
 * Appending the original docWithCode of EntityType to super.packageCode()
 */
class CustomizedCodeGenerator(model: Model) extends SourceCodeGenerator(model) {
  val models = new mutable.MutableList[String]

  override def packageCode(profile: String, pkg: String, container: String, parentType: Option[String]): String = {
    super.packageCode(profile, pkg, container, parentType) + "\n" + outsideCode
  }

  def outsideCode = s"${indent(models.mkString("\n"))}"

  override def Table = new Table(_) {
    override def EntityType = new EntityTypeDef {
      override def docWithCode: String = {
        models += super.docWithCode.toString + "\n"
        ""
      }
    }
  }
}

object Generator {
  def run(
    slickDriver: String,
    jdbcDriver: String,
    url: String,
    outputDir: String,
    pkg: String,
    user: Option[String],
    password: Option[String]
  ): Unit = {

    val driver: JdbcProfile =
      Class.forName(slickDriver + "$").getField("MODULE$").get(null).asInstanceOf[JdbcProfile]
    val dbFactory = driver.api.Database
    val db = dbFactory.forURL(url, driver = jdbcDriver,
      user = user.getOrElse(null), password = password.getOrElse(null), keepAliveConnection = true)
    try {
      val m = Await.result(db.run(driver.createModel(None, false)(ExecutionContext.global).withPinnedSession), Duration.Inf)
      new CustomizedCodeGenerator(m).writeToFile(slickDriver,outputDir,pkg)
    } finally db.close
  }

  def main(args: Array[String]): Unit = {
    val slickDriver = "slick.jdbc.PostgresProfile"
    val jdbcDriver = "org.postgresql.Driver"
    val url = "jdbc:postgresql://localhost:5432/mifi?user=mifi&password=alcolismo"
    val outputFolder = "../app"
    val pkg = "models"
    val usr = None
    val psw = None

		run(slickDriver, jdbcDriver, url, outputFolder, pkg, usr, psw)
  }
}
