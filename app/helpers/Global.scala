package helpers

import models._

import com.google.inject.{Guice, AbstractModule}
import play.api.{Application, GlobalSettings}
import services.{SimpleUUIDGenerator, UUIDGenerator}

import com.github.mauricio.async.db.Configuration
import com.github.mauricio.async.db.postgresql.pool.PostgreSQLConnectionFactory
import com.github.mauricio.async.db.pool.{PoolConfiguration, ConnectionPool}
import com.github.mauricio.async.db.postgresql.util.URLParser

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

  private val databaseConfiguration = System.getenv("DATABASE_URL") match {
    case url : String => URLParser.parse(url)
    case _ => new Configuration(
      username = "mifi",
      host = "localhost",
      // port: Int = 5432,
      password = Some("M1fIn@nc3"),
      database = Some("mifi")
    )
  }

  private val factory = new PostgreSQLConnectionFactory( databaseConfiguration )

  val pool = new ConnectionPool(factory, PoolConfiguration.Default)

  override def onStop(app: Application) {
    pool.close
  }
}
