import org.apache.spark.SparkContext
import org.apache.spark.SparkConf
import org.apache.spark.mllib.linalg.{Vectors, Vector}
import org.apache.spark.mllib.stat.{MultivariateStatisticalSummary, Statistics}
import org.apache.spark.rdd.RDD

object SlickGenerator {
  def sharpeRatio(dr: Array[Double]): Double = {
    val k = Math.sqrt(250.0)
    val count = dr.length
    val mean = dr.sum / count
    val devs = dr.map(r => (r - mean) * (r - mean))
    val stddev = Math.sqrt(devs.sum / count)
    k * mean / stddev
  }

  def main(args: Array[String]) {
    val slickDriver = "slick.driver.PostgresDriver"
    val jdbcDriver = "org.postgresql.Driver"
    val url = "jdbc:postgresql://localhost:5432/mifi?user=mifi&password=M1fIn@nc3"
    val outputFolder = "../app"
    val pkg = "models"
    val usr = ""
    val psw = ""
    slick.codegen.SourceCodeGenerator.main(
      Array(slickDriver, jdbcDriver, url, outputFolder, pkg)
    )
  }
}
