package controllers

import java.sql.Date

import helpers.Formatter

import models._

import javax.inject._
import play.api.db.slick._
import play.api.mvc._
import play.api.libs.json._
import play.api.mvc.PlayBodyParsers
import scala.async.Async.{async, await}
import scala.concurrent.ExecutionContext
import slick.jdbc.JdbcProfile
import slick.jdbc.PostgresProfile.api._

@Singleton
class HealthController @Inject()(implicit ec: ExecutionContext,
                                      protected val dbConfigProvider: DatabaseConfigProvider,
                                      cc: ControllerComponents,
                                      pbp:PlayBodyParsers)
    extends AbstractController(cc) with HasDatabaseConfigProvider[JdbcProfile] {
  def getHealth(): Action[AnyContent] = Action.async { request => async {
    Ok("OK")
  }}
}
