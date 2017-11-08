package controllers

import org.slf4j.{LoggerFactory, Logger}
import play.api.mvc._

class Application () extends Controller {

  private final val logger: Logger = LoggerFactory.getLogger(classOf[Application])

  // def index = Action {
  //   logger.info("Serving index page...")
  //   Ok(views.html.index())
  // }

  // def randomUUID = Action {
  //   logger.info("calling UUIDGenerator...")
  //   Ok(uuidGenerator.generate.toString)
  // }

}
