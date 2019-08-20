import javax.inject.Inject
import akka.stream.Materializer
import play.api.Logging
import play.api.mvc._
import scala.concurrent.ExecutionContext
import scala.concurrent.Future

import play.api.http.DefaultHttpFilters
import play.api.http.EnabledFilters
import play.filters.gzip.GzipFilter

class Filters @Inject()(
    defaultFilters: EnabledFilters,
    gzip: GzipFilter,
    log: LoggingFilter
) extends DefaultHttpFilters(defaultFilters.filters :+ gzip :+ log: _*)

class LoggingFilter @Inject()(implicit val mat: Materializer, ec: ExecutionContext) extends Filter with Logging {

  def apply(nextFilter: RequestHeader => Future[Result])(requestHeader: RequestHeader): Future[Result] = {

    val startTime = System.currentTimeMillis

    nextFilter(requestHeader).map { result =>
      val endTime     = System.currentTimeMillis
      val requestTime = endTime - startTime

      logger.info(
        s"${requestHeader.domain} - ${requestHeader.method} - ${requestHeader.uri} - ${requestTime}ms - ${result.header.status}"
      )

      result.withHeaders("Request-Time" -> requestTime.toString)
    }
  }
}
