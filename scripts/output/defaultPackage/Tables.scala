package defaultPackage
// AUTO-GENERATED Slick data model
/** Stand-alone Slick data model for immediate use */
object Tables extends {
  val profile = slick.driver.PostgresDriver
} with Tables

/** Slick data model trait for extension, choice of backend or usage in the cake pattern. (Make sure to initialize this late.) */
trait Tables {
  val profile: slick.driver.JdbcProfile
  import profile.api._
  import slick.model.ForeignKeyAction
  // NOTE: GetResult mappers for plain SQL are only generated for tables where Slick knows how to map the types of all columns.
  import slick.jdbc.{GetResult => GR}

  /** DDL for all tables. Call .create to execute. */
  lazy val schema = Accounts.schema ++ Categories.schema ++ CategoryMatch.schema ++ SubCategories.schema ++ Transactions.schema
  @deprecated("Use .schema instead of .ddl", "3.0")
  def ddl = schema

  /** Entity class storing rows of table Accounts
   *  @param account Database column account SqlType(varchar), PrimaryKey, Length(32,true)
   *  @param initialAmount Database column initial_amount SqlType(numeric), Default(None)
   *  @param rowsToSkip Database column rows_to_skip SqlType(int4), Default(None)
   *  @param delimiter Database column delimiter SqlType(varchar), Default(None)
   *  @param dateFormat Database column date_format SqlType(varchar), Length(32,true), Default(None)
   *  @param finalRow Database column final_row SqlType(varchar), Length(32,true), Default(None)
   *  @param transactionDate Database column transaction_date SqlType(int4), Default(None)
   *  @param exchangeDate Database column exchange_date SqlType(int4), Default(None)
   *  @param receiver Database column receiver SqlType(_int4), Length(10,false), Default(None)
   *  @param purpose Database column purpose SqlType(_int4), Length(10,false), Default(None)
   *  @param amountIn Database column amount_in SqlType(int4), Default(None)
   *  @param amountOut Database column amount_out SqlType(int4), Default(None)
   *  @param currency Database column currency SqlType(int4), Default(None)
   *  @param currencyDefault Database column currency_default SqlType(varchar), Length(3,true), Default(None) */
  case class AccountsRow(account: String, initialAmount: Option[scala.math.BigDecimal] = None, rowsToSkip: Option[Int] = None, delimiter: Option[Char] = None, dateFormat: Option[String] = None, finalRow: Option[String] = None, transactionDate: Option[Int] = None, exchangeDate: Option[Int] = None, receiver: Option[String] = None, purpose: Option[String] = None, amountIn: Option[Int] = None, amountOut: Option[Int] = None, currency: Option[Int] = None, currencyDefault: Option[String] = None)
  /** GetResult implicit for fetching AccountsRow objects using plain SQL queries */
  implicit def GetResultAccountsRow(implicit e0: GR[String], e1: GR[Option[scala.math.BigDecimal]], e2: GR[Option[Int]], e3: GR[Option[Char]], e4: GR[Option[String]]): GR[AccountsRow] = GR{
    prs => import prs._
    AccountsRow.tupled((<<[String], <<?[scala.math.BigDecimal], <<?[Int], <<?[Char], <<?[String], <<?[String], <<?[Int], <<?[Int], <<?[String], <<?[String], <<?[Int], <<?[Int], <<?[Int], <<?[String]))
  }
  /** Table description of table accounts. Objects of this class serve as prototypes for rows in queries. */
  class Accounts(_tableTag: Tag) extends Table[AccountsRow](_tableTag, "accounts") {
    def * = (account, initialAmount, rowsToSkip, delimiter, dateFormat, finalRow, transactionDate, exchangeDate, receiver, purpose, amountIn, amountOut, currency, currencyDefault) <> (AccountsRow.tupled, AccountsRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(account), initialAmount, rowsToSkip, delimiter, dateFormat, finalRow, transactionDate, exchangeDate, receiver, purpose, amountIn, amountOut, currency, currencyDefault).shaped.<>({r=>import r._; _1.map(_=> AccountsRow.tupled((_1.get, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12, _13, _14)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column account SqlType(varchar), PrimaryKey, Length(32,true) */
    val account: Rep[String] = column[String]("account", O.PrimaryKey, O.Length(32,varying=true))
    /** Database column initial_amount SqlType(numeric), Default(None) */
    val initialAmount: Rep[Option[scala.math.BigDecimal]] = column[Option[scala.math.BigDecimal]]("initial_amount", O.Default(None))
    /** Database column rows_to_skip SqlType(int4), Default(None) */
    val rowsToSkip: Rep[Option[Int]] = column[Option[Int]]("rows_to_skip", O.Default(None))
    /** Database column delimiter SqlType(varchar), Default(None) */
    val delimiter: Rep[Option[Char]] = column[Option[Char]]("delimiter", O.Default(None))
    /** Database column date_format SqlType(varchar), Length(32,true), Default(None) */
    val dateFormat: Rep[Option[String]] = column[Option[String]]("date_format", O.Length(32,varying=true), O.Default(None))
    /** Database column final_row SqlType(varchar), Length(32,true), Default(None) */
    val finalRow: Rep[Option[String]] = column[Option[String]]("final_row", O.Length(32,varying=true), O.Default(None))
    /** Database column transaction_date SqlType(int4), Default(None) */
    val transactionDate: Rep[Option[Int]] = column[Option[Int]]("transaction_date", O.Default(None))
    /** Database column exchange_date SqlType(int4), Default(None) */
    val exchangeDate: Rep[Option[Int]] = column[Option[Int]]("exchange_date", O.Default(None))
    /** Database column receiver SqlType(_int4), Length(10,false), Default(None) */
    val receiver: Rep[Option[String]] = column[Option[String]]("receiver", O.Length(10,varying=false), O.Default(None))
    /** Database column purpose SqlType(_int4), Length(10,false), Default(None) */
    val purpose: Rep[Option[String]] = column[Option[String]]("purpose", O.Length(10,varying=false), O.Default(None))
    /** Database column amount_in SqlType(int4), Default(None) */
    val amountIn: Rep[Option[Int]] = column[Option[Int]]("amount_in", O.Default(None))
    /** Database column amount_out SqlType(int4), Default(None) */
    val amountOut: Rep[Option[Int]] = column[Option[Int]]("amount_out", O.Default(None))
    /** Database column currency SqlType(int4), Default(None) */
    val currency: Rep[Option[Int]] = column[Option[Int]]("currency", O.Default(None))
    /** Database column currency_default SqlType(varchar), Length(3,true), Default(None) */
    val currencyDefault: Rep[Option[String]] = column[Option[String]]("currency_default", O.Length(3,varying=true), O.Default(None))
  }
  /** Collection-like TableQuery object for table Accounts */
  lazy val Accounts = new TableQuery(tag => new Accounts(tag))

  /** Entity class storing rows of table Categories
   *  @param category Database column category SqlType(varchar), PrimaryKey, Length(32,true)
   *  @param color Database column color SqlType(varchar), Length(8,true), Default(None) */
  case class CategoriesRow(category: String, color: Option[String] = None)
  /** GetResult implicit for fetching CategoriesRow objects using plain SQL queries */
  implicit def GetResultCategoriesRow(implicit e0: GR[String], e1: GR[Option[String]]): GR[CategoriesRow] = GR{
    prs => import prs._
    CategoriesRow.tupled((<<[String], <<?[String]))
  }
  /** Table description of table categories. Objects of this class serve as prototypes for rows in queries. */
  class Categories(_tableTag: Tag) extends Table[CategoriesRow](_tableTag, "categories") {
    def * = (category, color) <> (CategoriesRow.tupled, CategoriesRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(category), color).shaped.<>({r=>import r._; _1.map(_=> CategoriesRow.tupled((_1.get, _2)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column category SqlType(varchar), PrimaryKey, Length(32,true) */
    val category: Rep[String] = column[String]("category", O.PrimaryKey, O.Length(32,varying=true))
    /** Database column color SqlType(varchar), Length(8,true), Default(None) */
    val color: Rep[Option[String]] = column[Option[String]]("color", O.Length(8,varying=true), O.Default(None))
  }
  /** Collection-like TableQuery object for table Categories */
  lazy val Categories = new TableQuery(tag => new Categories(tag))

  /** Entity class storing rows of table CategoryMatch
   *  @param category Database column category SqlType(varchar), Length(32,true)
   *  @param subCategory Database column sub_category SqlType(varchar), Length(32,true)
   *  @param color Database column color SqlType(varchar), Length(8,true), Default(None) */
  case class CategoryMatchRow(category: String, subCategory: String, color: Option[String] = None)
  /** GetResult implicit for fetching CategoryMatchRow objects using plain SQL queries */
  implicit def GetResultCategoryMatchRow(implicit e0: GR[String], e1: GR[Option[String]]): GR[CategoryMatchRow] = GR{
    prs => import prs._
    CategoryMatchRow.tupled((<<[String], <<[String], <<?[String]))
  }
  /** Table description of table category_match. Objects of this class serve as prototypes for rows in queries. */
  class CategoryMatch(_tableTag: Tag) extends Table[CategoryMatchRow](_tableTag, "category_match") {
    def * = (category, subCategory, color) <> (CategoryMatchRow.tupled, CategoryMatchRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(category), Rep.Some(subCategory), color).shaped.<>({r=>import r._; _1.map(_=> CategoryMatchRow.tupled((_1.get, _2.get, _3)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column category SqlType(varchar), Length(32,true) */
    val category: Rep[String] = column[String]("category", O.Length(32,varying=true))
    /** Database column sub_category SqlType(varchar), Length(32,true) */
    val subCategory: Rep[String] = column[String]("sub_category", O.Length(32,varying=true))
    /** Database column color SqlType(varchar), Length(8,true), Default(None) */
    val color: Rep[Option[String]] = column[Option[String]]("color", O.Length(8,varying=true), O.Default(None))

    /** Primary key of CategoryMatch (database name category_match_pkey) */
    val pk = primaryKey("category_match_pkey", (category, subCategory))

    /** Foreign key referencing Categories (database name category_match_category_fkey) */
    lazy val categoriesFk = foreignKey("category_match_category_fkey", category, Categories)(r => r.category, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing SubCategories (database name category_match_sub_category_fkey) */
    lazy val subCategoriesFk = foreignKey("category_match_sub_category_fkey", subCategory, SubCategories)(r => r.subCategory, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
  }
  /** Collection-like TableQuery object for table CategoryMatch */
  lazy val CategoryMatch = new TableQuery(tag => new CategoryMatch(tag))

  /** Entity class storing rows of table SubCategories
   *  @param subCategory Database column sub_category SqlType(varchar), PrimaryKey, Length(32,true) */
  case class SubCategoriesRow(subCategory: String)
  /** GetResult implicit for fetching SubCategoriesRow objects using plain SQL queries */
  implicit def GetResultSubCategoriesRow(implicit e0: GR[String]): GR[SubCategoriesRow] = GR{
    prs => import prs._
    SubCategoriesRow(<<[String])
  }
  /** Table description of table sub_categories. Objects of this class serve as prototypes for rows in queries. */
  class SubCategories(_tableTag: Tag) extends Table[SubCategoriesRow](_tableTag, "sub_categories") {
    def * = subCategory <> (SubCategoriesRow, SubCategoriesRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = Rep.Some(subCategory).shaped.<>(r => r.map(_=> SubCategoriesRow(r.get)), (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column sub_category SqlType(varchar), PrimaryKey, Length(32,true) */
    val subCategory: Rep[String] = column[String]("sub_category", O.PrimaryKey, O.Length(32,varying=true))
  }
  /** Collection-like TableQuery object for table SubCategories */
  lazy val SubCategories = new TableQuery(tag => new SubCategories(tag))

  /** Entity class storing rows of table Transactions
   *  @param id Database column id SqlType(bigserial), AutoInc, PrimaryKey
   *  @param accountNumber Database column account_number SqlType(varchar), Length(32,true), Default(None)
   *  @param transactionDate Database column transaction_date SqlType(date), Default(None)
   *  @param exchangeDate Database column exchange_date SqlType(date), Default(None)
   *  @param receiver Database column receiver SqlType(varchar), Length(512,true), Default(None)
   *  @param purpose Database column purpose SqlType(varchar), Length(512,true), Default(None)
   *  @param amount Database column amount SqlType(numeric), Default(None)
   *  @param currency Database column currency SqlType(varchar), Length(3,true), Default(None)
   *  @param category Database column category SqlType(varchar), Length(32,true), Default(None)
   *  @param subCategory Database column sub_category SqlType(varchar), Length(32,true), Default(None)
   *  @param comment Database column comment SqlType(varchar), Length(512,true), Default(None)
   *  @param approved Database column approved SqlType(bool) */
  case class TransactionsRow(id: Long, accountNumber: Option[String] = None, transactionDate: Option[java.sql.Date] = None, exchangeDate: Option[java.sql.Date] = None, receiver: Option[String] = None, purpose: Option[String] = None, amount: Option[scala.math.BigDecimal] = None, currency: Option[String] = None, category: Option[String] = None, subCategory: Option[String] = None, comment: Option[String] = None, approved: Boolean)
  /** GetResult implicit for fetching TransactionsRow objects using plain SQL queries */
  implicit def GetResultTransactionsRow(implicit e0: GR[Long], e1: GR[Option[String]], e2: GR[Option[java.sql.Date]], e3: GR[Option[scala.math.BigDecimal]], e4: GR[Boolean]): GR[TransactionsRow] = GR{
    prs => import prs._
    TransactionsRow.tupled((<<[Long], <<?[String], <<?[java.sql.Date], <<?[java.sql.Date], <<?[String], <<?[String], <<?[scala.math.BigDecimal], <<?[String], <<?[String], <<?[String], <<?[String], <<[Boolean]))
  }
  /** Table description of table transactions. Objects of this class serve as prototypes for rows in queries. */
  class Transactions(_tableTag: Tag) extends Table[TransactionsRow](_tableTag, "transactions") {
    def * = (id, accountNumber, transactionDate, exchangeDate, receiver, purpose, amount, currency, category, subCategory, comment, approved) <> (TransactionsRow.tupled, TransactionsRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(id), accountNumber, transactionDate, exchangeDate, receiver, purpose, amount, currency, category, subCategory, comment, Rep.Some(approved)).shaped.<>({r=>import r._; _1.map(_=> TransactionsRow.tupled((_1.get, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12.get)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column id SqlType(bigserial), AutoInc, PrimaryKey */
    val id: Rep[Long] = column[Long]("id", O.AutoInc, O.PrimaryKey)
    /** Database column account_number SqlType(varchar), Length(32,true), Default(None) */
    val accountNumber: Rep[Option[String]] = column[Option[String]]("account_number", O.Length(32,varying=true), O.Default(None))
    /** Database column transaction_date SqlType(date), Default(None) */
    val transactionDate: Rep[Option[java.sql.Date]] = column[Option[java.sql.Date]]("transaction_date", O.Default(None))
    /** Database column exchange_date SqlType(date), Default(None) */
    val exchangeDate: Rep[Option[java.sql.Date]] = column[Option[java.sql.Date]]("exchange_date", O.Default(None))
    /** Database column receiver SqlType(varchar), Length(512,true), Default(None) */
    val receiver: Rep[Option[String]] = column[Option[String]]("receiver", O.Length(512,varying=true), O.Default(None))
    /** Database column purpose SqlType(varchar), Length(512,true), Default(None) */
    val purpose: Rep[Option[String]] = column[Option[String]]("purpose", O.Length(512,varying=true), O.Default(None))
    /** Database column amount SqlType(numeric), Default(None) */
    val amount: Rep[Option[scala.math.BigDecimal]] = column[Option[scala.math.BigDecimal]]("amount", O.Default(None))
    /** Database column currency SqlType(varchar), Length(3,true), Default(None) */
    val currency: Rep[Option[String]] = column[Option[String]]("currency", O.Length(3,varying=true), O.Default(None))
    /** Database column category SqlType(varchar), Length(32,true), Default(None) */
    val category: Rep[Option[String]] = column[Option[String]]("category", O.Length(32,varying=true), O.Default(None))
    /** Database column sub_category SqlType(varchar), Length(32,true), Default(None) */
    val subCategory: Rep[Option[String]] = column[Option[String]]("sub_category", O.Length(32,varying=true), O.Default(None))
    /** Database column comment SqlType(varchar), Length(512,true), Default(None) */
    val comment: Rep[Option[String]] = column[Option[String]]("comment", O.Length(512,varying=true), O.Default(None))
    /** Database column approved SqlType(bool) */
    val approved: Rep[Boolean] = column[Boolean]("approved")

    /** Foreign key referencing Accounts (database name transactions_account_number_fkey) */
    lazy val accountsFk = foreignKey("transactions_account_number_fkey", accountNumber, Accounts)(r => Rep.Some(r.account), onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing Categories (database name transactions_category_fkey) */
    lazy val categoriesFk = foreignKey("transactions_category_fkey", category, Categories)(r => Rep.Some(r.category), onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing CategoryMatch (database name transactions_category_fkey1) */
    lazy val categoryMatchFk = foreignKey("transactions_category_fkey1", (category, subCategory), CategoryMatch)(r => (Rep.Some(r.category), Rep.Some(r.subCategory)), onUpdate=ForeignKeyAction.NoAction, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing SubCategories (database name transactions_sub_category_fkey) */
    lazy val subCategoriesFk = foreignKey("transactions_sub_category_fkey", subCategory, SubCategories)(r => Rep.Some(r.subCategory), onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)

    /** Index over (transactionDate) (database name transaction_date_idx) */
    val index1 = index("transaction_date_idx", transactionDate)
  }
  /** Collection-like TableQuery object for table Transactions */
  lazy val Transactions = new TableQuery(tag => new Transactions(tag))
}
