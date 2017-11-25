import java.time.{LocalDate, Month}
import java.io._
import util.Random

case class Transaction(id: Int,
                       transactionDate: String,
                       exchangeDate: String,
                       amount: BigDecimal,
                       category: String,
                       subCategory: String,
                       receiver: String = "",
                       purpose: String = "",
                       account: String = "db",
                       currency: String = "EUR",
                       comment: String = "\\N",
                       approved: String = "t") {
  override def toString(): String = {
    "" +
    id              + "\t" +
    account         + "\t" +
    transactionDate + "\t" +
    exchangeDate    + "\t" +
    receiver        + "\t" +
    purpose         + "\t" +
    amount          + "\t" +
    currency        + "\t" +
    category        + "\t" +
    subCategory     + "\t" +
    comment         + "\t" +
    approved
  }
}

object Generator {

  def generateScalaModels = {
    val slickDriver = "slick.driver.PostgresDriver"
    val jdbcDriver = "org.postgresql.Driver"
    val url = "jdbc:postgresql://localhost:5432/mifi?user=mifi&password=alcolismo"
    val outputFolder = "../app"
    val pkg = "models"
    val usr = ""
    val psw = ""
    slick.codegen.SourceCodeGenerator.main(
      Array(slickDriver, jdbcDriver, url, outputFolder, pkg)
    )
  }

  def dToBD(d: Double): BigDecimal = {
    val scale = 2
    BigDecimal(d).setScale(scale, BigDecimal.RoundingMode.FLOOR)
  }

  def generateTransactions() {
    val rnd = new Random()
    var d = LocalDate.of(2012, Month.JANUARY, 1)
    var i = 0;
    val transactions = (1 to 7 * 365).map {x =>
      d = d.plusDays(1)
      var t: List[Transaction] = Nil
      // week
      if (x % 7 == 5) t =     Transaction(i,d.toString, d.toString, dToBD(-20)                 , "other",                     "cash"            )::t; i+= 1
      if (x % 7 == 1) t =     Transaction(i,d.toString, d.toString, dToBD(-10*rnd.nextDouble)  , "living",                    "food"            )::t; i+= 1
      if (x % 7 == 2) t =     Transaction(i,d.toString, d.toString, dToBD(-10*rnd.nextDouble)  , "free time",                 "hobbies"         )::t; i+= 1
      if (x % 7 == 3) t =     Transaction(i,d.toString, d.toString, dToBD(-10*rnd.nextDouble)  , "free time",                 "sport"           )::t; i+= 1
      if (x % 7 == 4) t =     Transaction(i,d.toString, d.toString, dToBD(-10*rnd.nextDouble)  , "free time",                 "entertainment"   )::t; i+= 1
      if (x % 7 == 4) t =     Transaction(i,d.toString, d.toString, dToBD(-10*rnd.nextDouble)  , "living",                    "food"            )::t; i+= 1
      if (x % 7 == 5) t =     Transaction(i,d.toString, d.toString, dToBD(-20*rnd.nextDouble)  , "mobility",                  "gas"             )::t; i+= 1
      if (x % 7 == 5) t =     Transaction(i,d.toString, d.toString, dToBD(-20*rnd.nextDouble)  , "free time",                 "going out"       )::t; i+= 1
      if (x % 7 == 5) t =     Transaction(i,d.toString, d.toString, dToBD(-20*rnd.nextDouble)  , "living",                    "food"            )::t; i+= 1
      if (x % 7 == 6) t =     Transaction(i,d.toString, d.toString, dToBD(-20*rnd.nextDouble)  , "free time",                 "going out"       )::t; i+= 1
      if (x % 7 == 6) t =     Transaction(i,d.toString, d.toString, dToBD(-20*rnd.nextDouble)  , "health",                    "wellness"        )::t; i+= 1
      // month
      if (d.getDayOfMonth == 1) t =    Transaction(i,d.toString, d.toString, dToBD(-10)                 , "house",                     "phone"           )::t; i+= 1
      if (d.getDayOfMonth == 2) t =    Transaction(i,d.toString, d.toString, dToBD(-10)                 , "house",                     "electricity"     )::t; i+= 1
      if (d.getDayOfMonth == 3) t =    Transaction(i,d.toString, d.toString, dToBD(-10)                 , "house",                     "internet"        )::t; i+= 1
      if (d.getDayOfMonth == 4) t =    Transaction(i,d.toString, d.toString, dToBD(-250)                , "house",                     "rent"            )::t; i+= 1
      if (d.getDayOfMonth == 5) t =    Transaction(i,d.toString, d.toString, dToBD(-10)                 , "finance",                   "costs and fees"  )::t; i+= 1
      if (d.getDayOfMonth == 6) t =    Transaction(i,d.toString, d.toString, dToBD(-50)                 , "finance",                   "insurance"       )::t; i+= 1
      if (d.getDayOfMonth == 7) t =    Transaction(i,d.toString, d.toString, dToBD(-100*rnd.nextDouble) , "health",                    "doctor visits"   )::t; i+= 1
      if (d.getDayOfMonth == 8) t =    Transaction(i,d.toString, d.toString, dToBD(1000)                , "work and training",         "salary"          )::t; i+= 1
      if (d.getDayOfMonth == 10) t =   Transaction(i,d.toString, d.toString, dToBD(-80*rnd.nextDouble)  , "living",                    "pets"            )::t; i+= 1
      if (d.getDayOfMonth == 15) t =   Transaction(i,d.toString, d.toString, dToBD(-80*rnd.nextDouble)  , "living",                    "household"       )::t; i+= 1
      if (d.getDayOfMonth == 20) t =   Transaction(i,d.toString, d.toString, dToBD(-80*rnd.nextDouble)  , "living",                    "clothes"         )::t; i+= 1
      if (d.getDayOfMonth == 20) t =   Transaction(i,d.toString, d.toString, dToBD(-80*rnd.nextDouble)  , "free time",                 "gadgets"         )::t; i+= 1
      // year
      if (x % 365 == 180) t = Transaction(i,d.toString, d.toString, dToBD(-500*rnd.nextDouble) , "free time",                 "travel"          )::t; i += 1
      if (x % 365 == 355) t = Transaction(i,d.toString, d.toString, dToBD(-200*rnd.nextDouble) , "free time",                 "presents"        )::t; i += 1
      t
    }.flatMap(x => x)
    println (transactions.map(_.amount).reduce(_ + _))
    val transactionsStr = transactions.map(x => x.toString).reduce( _ + "\n" + _ )
    val f:File = new File("insert.sql")
    val p = new PrintWriter(f)
    p.println("COPY transactions (id, account_number, transaction_date, exchange_date, receiver, purpose, amount, currency, category, sub_category, comment, approved) FROM stdin;")
    p.println(transactionsStr)
    p.close
  }

  def main(args: Array[String]): Unit = {
    generateTransactions()
  }
}
