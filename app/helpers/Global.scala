package helpers

import models._

import org.slf4j.{LoggerFactory, Logger}

import com.google.inject.{Guice, AbstractModule}
import play.api.{Application, GlobalSettings}

import slick.driver.PostgresDriver.api._

/**
 * Set up the Guice injector and provide the mechanism for return objects from the dependency graph.
 */
object Global extends GlobalSettings {
  private final val logger: Logger = LoggerFactory.getLogger(classOf[GlobalSettings])

  // /**
  //  * Bind types such that whenever UUIDGenerator is required, an instance of SimpleUUIDGenerator will be used.
  //  */
  // val injector = Guice.createInjector(new AbstractModule {
  //   protected def configure() {
  //     bind(classOf[UUIDGenerator]).to(classOf[SimpleUUIDGenerator])
  //   }
  // })

  // /**
  //  * Controllers must be resolved through the application context. There is a special method of GlobalSettings
  //  * that we can override to resolve a given controller. This resolution is required by the Play router.
  //  */
  // override def getControllerInstance[A](controllerClass: Class[A]): A = injector.getInstance(controllerClass)

  val baseUrl = System.getenv("MIFI_BASE_URL") match {
    case url : String => url
    case _  => "http://localhost:9000/api/v0.1/"
  }

  val db = System.getenv("DATABASE_URL") match {
    case url: String => {logger.info(s"$url"); Database.forURL(url, driver = "org.postgresql.Driver")}
    case _ => Database.forURL("jdbc:postgresql://localhost:5432/mifi?user=mifi&password=alcolismo",
                driver = "org.postgresql.Driver"
              )
  }

}
