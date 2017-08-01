package helpers

import models._

import com.google.inject.{Guice, AbstractModule}
import play.api.{Application, GlobalSettings}
import services.{SimpleUUIDGenerator, UUIDGenerator}

import slick.driver.PostgresDriver.api._

/**
 * Set up the Guice injector and provide the mechanism for return objects from the dependency graph.
 */
object Global extends GlobalSettings {

  /**
   * Bind types such that whenever UUIDGenerator is required, an instance of SimpleUUIDGenerator will be used.
   */
  val injector = Guice.createInjector(new AbstractModule {
    protected def configure() {
      bind(classOf[UUIDGenerator]).to(classOf[SimpleUUIDGenerator])
    }
  })

  /**
   * Controllers must be resolved through the application context. There is a special method of GlobalSettings
   * that we can override to resolve a given controller. This resolution is required by the Play router.
   */
  override def getControllerInstance[A](controllerClass: Class[A]): A = injector.getInstance(controllerClass)

  val baseUrl = System.getenv("MIFI_BASE_URL") match {
    case url : String => url
    case _  => "http://localhost:9000/api/v0.1/"
  }

  val db = System.getenv("DATABASE_URL") match {
    case url: String => Database.forURL(url)
    case _ => Database.forURL("jdbc:postgresql://localhost:5432/mifi?user=mifi&password=M1fIn@nc3",
                driver = "org.postgresql.Driver"
              )
  }
}
