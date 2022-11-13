package models
// AUTO-GENERATED Slick data model
/** Stand-alone Slick data model for immediate use */
object Tables extends {
  val profile = slick.jdbc.PostgresProfile
} with Tables

/** Slick data model trait for extension, choice of backend or usage in the cake pattern. (Make sure to initialize this late.) */
trait Tables {
  val profile: slick.jdbc.JdbcProfile
  import profile.api._
  import slick.model.ForeignKeyAction
  // NOTE: GetResult mappers for plain SQL are only generated for tables where Slick knows how to map the types of all columns.
  import slick.jdbc.{GetResult => GR}

  /** DDL for all tables. Call .create to execute. */
  lazy val schema: profile.SchemaDescription = Array(Accounts.schema, AccountTypes.schema, Categories.schema, CategoryMatch.schema, SubCategories.schema, TaggedClassification.schema, TaggedTransactions.schema, Tags.schema, Transactions.schema, TransactionsClassification.schema).reduceLeft(_ ++ _)
  @deprecated("Use .schema instead of .ddl", "3.0")
  def ddl = schema


  /** GetResult implicit for fetching AccountsRow objects using plain SQL queries */
  implicit def GetResultAccountsRow(implicit e0: GR[Long], e1: GR[String], e2: GR[scala.math.BigDecimal], e3: GR[Option[String]], e4: GR[Option[scala.math.BigDecimal]]): GR[AccountsRow] = GR{
    prs => import prs._
    AccountsRow.tupled((<<[Long], <<[String], <<[Long], <<[scala.math.BigDecimal], <<?[String], <<?[String], <<?[scala.math.BigDecimal]))
  }
  /** Table description of table accounts. Objects of this class serve as prototypes for rows in queries. */
  class Accounts(_tableTag: Tag) extends profile.api.Table[AccountsRow](_tableTag, "accounts") {
    def * = (id, name, accountType, initialAmount, apiUser, apiPass, sharingRatio) <> (AccountsRow.tupled, AccountsRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(id), Rep.Some(name), Rep.Some(accountType), Rep.Some(initialAmount), apiUser, apiPass, sharingRatio).shaped.<>({r=>import r._; _1.map(_=> AccountsRow.tupled((_1.get, _2.get, _3.get, _4.get, _5, _6, _7)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column id SqlType(bigserial), AutoInc, PrimaryKey */
    val id: Rep[Long] = column[Long]("id", O.AutoInc, O.PrimaryKey)
    /** Database column name SqlType(varchar), Length(32,true) */
    val name: Rep[String] = column[String]("name", O.Length(32,varying=true))
    /** Database column account_type SqlType(int8) */
    val accountType: Rep[Long] = column[Long]("account_type")
    /** Database column initial_amount SqlType(numeric) */
    val initialAmount: Rep[scala.math.BigDecimal] = column[scala.math.BigDecimal]("initial_amount")
    /** Database column api_user SqlType(varchar), Length(64,true), Default(None) */
    val apiUser: Rep[Option[String]] = column[Option[String]]("api_user", O.Length(64,varying=true), O.Default(None))
    /** Database column api_pass SqlType(varchar), Length(64,true), Default(None) */
    val apiPass: Rep[Option[String]] = column[Option[String]]("api_pass", O.Length(64,varying=true), O.Default(None))
    /** Database column sharing_ratio SqlType(numeric), Default(Some(1.00)) */
    val sharingRatio: Rep[Option[scala.math.BigDecimal]] = column[Option[scala.math.BigDecimal]]("sharing_ratio", O.Default(Some(scala.math.BigDecimal("1.00"))))

    /** Foreign key referencing AccountTypes (database name accounts_account_type_fkey) */
    lazy val accountTypesFk1 = foreignKey("accounts_account_type_fkey", accountType, AccountTypes)(r => r.id, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing AccountTypes (database name accounts_account_type_fkey1) */
    lazy val accountTypesFk2 = foreignKey("accounts_account_type_fkey1", accountType, AccountTypes)(r => r.id, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)

    /** Uniqueness Index over (name) (database name accounts_name_key) */
    val index1 = index("accounts_name_key", name, unique=true)
  }
  /** Collection-like TableQuery object for table Accounts */
  lazy val Accounts = new TableQuery(tag => new Accounts(tag))


  /** GetResult implicit for fetching AccountTypesRow objects using plain SQL queries */
  implicit def GetResultAccountTypesRow(implicit e0: GR[Long], e1: GR[Option[String]], e2: GR[Int], e3: GR[String], e4: GR[Option[Int]]): GR[AccountTypesRow] = GR{
    prs => import prs._
    AccountTypesRow.tupled((<<[Long], <<?[String], <<[Int], <<[String], <<[String], <<?[String], <<[Int], <<[Int], <<[String], <<[String], <<[Int], <<[Int], <<?[Int], <<[String], <<?[String], <<?[String], <<?[String], <<?[String], <<?[String]))
  }
  /** Table description of table account_types. Objects of this class serve as prototypes for rows in queries. */
  class AccountTypes(_tableTag: Tag) extends profile.api.Table[AccountTypesRow](_tableTag, "account_types") {
    def * = (id, name, rowsToSkip, delimiter, dateFormat, finalRow, transactionDatePos, exchangeDatePos, receiverPos, purposePos, amountInPos, amountOutPos, currencyPos, currencyDefault, encoding, apiOauthUrl, apiAuthorization, apiReportUrl, color) <> (AccountTypesRow.tupled, AccountTypesRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(id), name, Rep.Some(rowsToSkip), Rep.Some(delimiter), Rep.Some(dateFormat), finalRow, Rep.Some(transactionDatePos), Rep.Some(exchangeDatePos), Rep.Some(receiverPos), Rep.Some(purposePos), Rep.Some(amountInPos), Rep.Some(amountOutPos), currencyPos, Rep.Some(currencyDefault), encoding, apiOauthUrl, apiAuthorization, apiReportUrl, color).shaped.<>({r=>import r._; _1.map(_=> AccountTypesRow.tupled((_1.get, _2, _3.get, _4.get, _5.get, _6, _7.get, _8.get, _9.get, _10.get, _11.get, _12.get, _13, _14.get, _15, _16, _17, _18, _19)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column id SqlType(bigserial), AutoInc, PrimaryKey */
    val id: Rep[Long] = column[Long]("id", O.AutoInc, O.PrimaryKey)
    /** Database column name SqlType(varchar), Length(32,true), Default(None) */
    val name: Rep[Option[String]] = column[Option[String]]("name", O.Length(32,varying=true), O.Default(None))
    /** Database column rows_to_skip SqlType(int4) */
    val rowsToSkip: Rep[Int] = column[Int]("rows_to_skip")
    /** Database column delimiter SqlType(varchar), Length(8,true) */
    val delimiter: Rep[String] = column[String]("delimiter", O.Length(8,varying=true))
    /** Database column date_format SqlType(varchar), Length(32,true) */
    val dateFormat: Rep[String] = column[String]("date_format", O.Length(32,varying=true))
    /** Database column final_row SqlType(varchar), Length(32,true), Default(None) */
    val finalRow: Rep[Option[String]] = column[Option[String]]("final_row", O.Length(32,varying=true), O.Default(None))
    /** Database column transaction_date_pos SqlType(int4) */
    val transactionDatePos: Rep[Int] = column[Int]("transaction_date_pos")
    /** Database column exchange_date_pos SqlType(int4) */
    val exchangeDatePos: Rep[Int] = column[Int]("exchange_date_pos")
    /** Database column receiver_pos SqlType(_int4), Length(10,false) */
    val receiverPos: Rep[String] = column[String]("receiver_pos", O.Length(10,varying=false))
    /** Database column purpose_pos SqlType(_int4), Length(10,false) */
    val purposePos: Rep[String] = column[String]("purpose_pos", O.Length(10,varying=false))
    /** Database column amount_in_pos SqlType(int4) */
    val amountInPos: Rep[Int] = column[Int]("amount_in_pos")
    /** Database column amount_out_pos SqlType(int4) */
    val amountOutPos: Rep[Int] = column[Int]("amount_out_pos")
    /** Database column currency_pos SqlType(int4), Default(None) */
    val currencyPos: Rep[Option[Int]] = column[Option[Int]]("currency_pos", O.Default(None))
    /** Database column currency_default SqlType(varchar), Length(3,true) */
    val currencyDefault: Rep[String] = column[String]("currency_default", O.Length(3,varying=true))
    /** Database column encoding SqlType(varchar), Length(16,true), Default(None) */
    val encoding: Rep[Option[String]] = column[Option[String]]("encoding", O.Length(16,varying=true), O.Default(None))
    /** Database column api_oauth_url SqlType(varchar), Length(512,true), Default(None) */
    val apiOauthUrl: Rep[Option[String]] = column[Option[String]]("api_oauth_url", O.Length(512,varying=true), O.Default(None))
    /** Database column api_authorization SqlType(varchar), Length(512,true), Default(None) */
    val apiAuthorization: Rep[Option[String]] = column[Option[String]]("api_authorization", O.Length(512,varying=true), O.Default(None))
    /** Database column api_report_url SqlType(varchar), Length(512,true), Default(None) */
    val apiReportUrl: Rep[Option[String]] = column[Option[String]]("api_report_url", O.Length(512,varying=true), O.Default(None))
    /** Database column color SqlType(varchar), Length(8,true), Default(None) */
    val color: Rep[Option[String]] = column[Option[String]]("color", O.Length(8,varying=true), O.Default(None))
  }
  /** Collection-like TableQuery object for table AccountTypes */
  lazy val AccountTypes = new TableQuery(tag => new AccountTypes(tag))


  /** GetResult implicit for fetching CategoriesRow objects using plain SQL queries */
  implicit def GetResultCategoriesRow(implicit e0: GR[String], e1: GR[Option[String]]): GR[CategoriesRow] = GR{
    prs => import prs._
    CategoriesRow.tupled((<<[String], <<?[String]))
  }
  /** Table description of table categories. Objects of this class serve as prototypes for rows in queries. */
  class Categories(_tableTag: Tag) extends profile.api.Table[CategoriesRow](_tableTag, "categories") {
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


  /** GetResult implicit for fetching CategoryMatchRow objects using plain SQL queries */
  implicit def GetResultCategoryMatchRow(implicit e0: GR[String], e1: GR[Option[String]]): GR[CategoryMatchRow] = GR{
    prs => import prs._
    CategoryMatchRow.tupled((<<[String], <<[String], <<?[String]))
  }
  /** Table description of table category_match. Objects of this class serve as prototypes for rows in queries. */
  class CategoryMatch(_tableTag: Tag) extends profile.api.Table[CategoryMatchRow](_tableTag, "category_match") {
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
    lazy val categoriesFk1 = foreignKey("category_match_category_fkey", category, Categories)(r => r.category, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing Categories (database name category_match_category_fkey1) */
    lazy val categoriesFk2 = foreignKey("category_match_category_fkey1", category, Categories)(r => r.category, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing SubCategories (database name category_match_sub_category_fkey) */
    lazy val subCategoriesFk3 = foreignKey("category_match_sub_category_fkey", subCategory, SubCategories)(r => r.subCategory, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing SubCategories (database name category_match_sub_category_fkey1) */
    lazy val subCategoriesFk4 = foreignKey("category_match_sub_category_fkey1", subCategory, SubCategories)(r => r.subCategory, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
  }
  /** Collection-like TableQuery object for table CategoryMatch */
  lazy val CategoryMatch = new TableQuery(tag => new CategoryMatch(tag))


  /** GetResult implicit for fetching SubCategoriesRow objects using plain SQL queries */
  implicit def GetResultSubCategoriesRow(implicit e0: GR[String]): GR[SubCategoriesRow] = GR{
    prs => import prs._
    SubCategoriesRow(<<[String])
  }
  /** Table description of table sub_categories. Objects of this class serve as prototypes for rows in queries. */
  class SubCategories(_tableTag: Tag) extends profile.api.Table[SubCategoriesRow](_tableTag, "sub_categories") {
    def * = subCategory <> (SubCategoriesRow, SubCategoriesRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = Rep.Some(subCategory).shaped.<>(r => r.map(_=> SubCategoriesRow(r.get)), (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column sub_category SqlType(varchar), PrimaryKey, Length(32,true) */
    val subCategory: Rep[String] = column[String]("sub_category", O.PrimaryKey, O.Length(32,varying=true))
  }
  /** Collection-like TableQuery object for table SubCategories */
  lazy val SubCategories = new TableQuery(tag => new SubCategories(tag))


  /** GetResult implicit for fetching TaggedClassificationRow objects using plain SQL queries */
  implicit def GetResultTaggedClassificationRow(implicit e0: GR[String]): GR[TaggedClassificationRow] = GR{
    prs => import prs._
    TaggedClassificationRow.tupled((<<[String], <<[String], <<[String], <<[String]))
  }
  /** Table description of table tagged_classification. Objects of this class serve as prototypes for rows in queries. */
  class TaggedClassification(_tableTag: Tag) extends profile.api.Table[TaggedClassificationRow](_tableTag, "tagged_classification") {
    def * = (description, category, subCategory, tag) <> (TaggedClassificationRow.tupled, TaggedClassificationRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(description), Rep.Some(category), Rep.Some(subCategory), Rep.Some(tag)).shaped.<>({r=>import r._; _1.map(_=> TaggedClassificationRow.tupled((_1.get, _2.get, _3.get, _4.get)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column description SqlType(varchar), Length(128,true) */
    val description: Rep[String] = column[String]("description", O.Length(128,varying=true))
    /** Database column category SqlType(varchar), Length(32,true) */
    val category: Rep[String] = column[String]("category", O.Length(32,varying=true))
    /** Database column sub_category SqlType(varchar), Length(32,true) */
    val subCategory: Rep[String] = column[String]("sub_category", O.Length(32,varying=true))
    /** Database column tag SqlType(varchar), Length(32,true) */
    val tag: Rep[String] = column[String]("tag", O.Length(32,varying=true))

    /** Primary key of TaggedClassification (database name tagged_classification_pkey) */
    val pk = primaryKey("tagged_classification_pkey", (description, category, subCategory, tag))

    /** Foreign key referencing Tags (database name tagged_classification_tag_fkey) */
    lazy val tagsFk = foreignKey("tagged_classification_tag_fkey", tag, Tags)(r => r.tag, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing TransactionsClassification (database name tagged_classification_description_category_sub_category_fkey) */
    lazy val transactionsClassificationFk = foreignKey("tagged_classification_description_category_sub_category_fkey", (description, category, subCategory), TransactionsClassification)(r => (r.description, r.category, r.subCategory), onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
  }
  /** Collection-like TableQuery object for table TaggedClassification */
  lazy val TaggedClassification = new TableQuery(tag => new TaggedClassification(tag))


  /** GetResult implicit for fetching TaggedTransactionsRow objects using plain SQL queries */
  implicit def GetResultTaggedTransactionsRow(implicit e0: GR[Long], e1: GR[String]): GR[TaggedTransactionsRow] = GR{
    prs => import prs._
    TaggedTransactionsRow.tupled((<<[Long], <<[String]))
  }
  /** Table description of table tagged_transactions. Objects of this class serve as prototypes for rows in queries. */
  class TaggedTransactions(_tableTag: Tag) extends profile.api.Table[TaggedTransactionsRow](_tableTag, "tagged_transactions") {
    def * = (transactionId, tag) <> (TaggedTransactionsRow.tupled, TaggedTransactionsRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(transactionId), Rep.Some(tag)).shaped.<>({r=>import r._; _1.map(_=> TaggedTransactionsRow.tupled((_1.get, _2.get)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column transaction_id SqlType(int8) */
    val transactionId: Rep[Long] = column[Long]("transaction_id")
    /** Database column tag SqlType(varchar), Length(32,true) */
    val tag: Rep[String] = column[String]("tag", O.Length(32,varying=true))

    /** Primary key of TaggedTransactions (database name tagged_transactions_pkey) */
    val pk = primaryKey("tagged_transactions_pkey", (transactionId, tag))

    /** Foreign key referencing Tags (database name tagged_transactions_tag_fkey) */
    lazy val tagsFk1 = foreignKey("tagged_transactions_tag_fkey", tag, Tags)(r => r.tag, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing Tags (database name tagged_transactions_tag_fkey1) */
    lazy val tagsFk2 = foreignKey("tagged_transactions_tag_fkey1", tag, Tags)(r => r.tag, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing Transactions (database name tagged_transactions_transaction_id_fkey) */
    lazy val transactionsFk3 = foreignKey("tagged_transactions_transaction_id_fkey", transactionId, Transactions)(r => r.id, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing Transactions (database name tagged_transactions_transaction_id_fkey1) */
    lazy val transactionsFk4 = foreignKey("tagged_transactions_transaction_id_fkey1", transactionId, Transactions)(r => r.id, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
  }
  /** Collection-like TableQuery object for table TaggedTransactions */
  lazy val TaggedTransactions = new TableQuery(tag => new TaggedTransactions(tag))


  /** GetResult implicit for fetching TagsRow objects using plain SQL queries */
  implicit def GetResultTagsRow(implicit e0: GR[String]): GR[TagsRow] = GR{
    prs => import prs._
    TagsRow(<<[String])
  }
  /** Table description of table tags. Objects of this class serve as prototypes for rows in queries. */
  class Tags(_tableTag: Tag) extends profile.api.Table[TagsRow](_tableTag, "tags") {
    def * = tag <> (TagsRow, TagsRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = Rep.Some(tag).shaped.<>(r => r.map(_=> TagsRow(r.get)), (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column tag SqlType(varchar), PrimaryKey, Length(32,true) */
    val tag: Rep[String] = column[String]("tag", O.PrimaryKey, O.Length(32,varying=true))
  }
  /** Collection-like TableQuery object for table Tags */
  lazy val Tags = new TableQuery(tag => new Tags(tag))


  /** GetResult implicit for fetching TransactionsRow objects using plain SQL queries */
  implicit def GetResultTransactionsRow(implicit e0: GR[Long], e1: GR[Option[java.sql.Date]], e2: GR[Option[String]], e3: GR[Option[scala.math.BigDecimal]], e4: GR[Boolean]): GR[TransactionsRow] = GR{
    prs => import prs._
    TransactionsRow.tupled((<<[Long], <<[Long], <<?[java.sql.Date], <<?[java.sql.Date], <<?[String], <<?[String], <<?[scala.math.BigDecimal], <<?[String], <<?[String], <<?[String], <<?[String], <<[Boolean]))
  }
  /** Table description of table transactions. Objects of this class serve as prototypes for rows in queries. */
  class Transactions(_tableTag: Tag) extends profile.api.Table[TransactionsRow](_tableTag, "transactions") {
    def * = (id, accountId, transactionDate, exchangeDate, receiver, purpose, amount, currency, category, subCategory, comment, approved) <> (TransactionsRow.tupled, TransactionsRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(id), Rep.Some(accountId), transactionDate, exchangeDate, receiver, purpose, amount, currency, category, subCategory, comment, Rep.Some(approved)).shaped.<>({r=>import r._; _1.map(_=> TransactionsRow.tupled((_1.get, _2.get, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12.get)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column id SqlType(bigserial), AutoInc, PrimaryKey */
    val id: Rep[Long] = column[Long]("id", O.AutoInc, O.PrimaryKey)
    /** Database column account_id SqlType(int8) */
    val accountId: Rep[Long] = column[Long]("account_id")
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

    /** Foreign key referencing Accounts (database name transactions_account_id_fkey) */
    lazy val accountsFk1 = foreignKey("transactions_account_id_fkey", accountId, Accounts)(r => r.id, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing Accounts (database name transactions_account_id_fkey1) */
    lazy val accountsFk2 = foreignKey("transactions_account_id_fkey1", accountId, Accounts)(r => r.id, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing Categories (database name transactions_category_fkey) */
    lazy val categoriesFk = foreignKey("transactions_category_fkey", category, Categories)(r => Rep.Some(r.category), onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing CategoryMatch (database name transactions_category_sub_category_fkey) */
    lazy val categoryMatchFk = foreignKey("transactions_category_sub_category_fkey", (category, subCategory), CategoryMatch)(r => (Rep.Some(r.category), Rep.Some(r.subCategory)), onUpdate=ForeignKeyAction.NoAction, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing SubCategories (database name transactions_sub_category_fkey) */
    lazy val subCategoriesFk = foreignKey("transactions_sub_category_fkey", subCategory, SubCategories)(r => Rep.Some(r.subCategory), onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)

    /** Index over (transactionDate) (database name transaction_date_idx) */
    val index1 = index("transaction_date_idx", transactionDate)
  }
  /** Collection-like TableQuery object for table Transactions */
  lazy val Transactions = new TableQuery(tag => new Transactions(tag))


  /** GetResult implicit for fetching TransactionsClassificationRow objects using plain SQL queries */
  implicit def GetResultTransactionsClassificationRow(implicit e0: GR[String]): GR[TransactionsClassificationRow] = GR{
    prs => import prs._
    TransactionsClassificationRow.tupled((<<[String], <<[String], <<[String]))
  }
  /** Table description of table transactions_classification. Objects of this class serve as prototypes for rows in queries. */
  class TransactionsClassification(_tableTag: Tag) extends profile.api.Table[TransactionsClassificationRow](_tableTag, "transactions_classification") {
    def * = (description, category, subCategory) <> (TransactionsClassificationRow.tupled, TransactionsClassificationRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(description), Rep.Some(category), Rep.Some(subCategory)).shaped.<>({r=>import r._; _1.map(_=> TransactionsClassificationRow.tupled((_1.get, _2.get, _3.get)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column description SqlType(varchar), Length(128,true) */
    val description: Rep[String] = column[String]("description", O.Length(128,varying=true))
    /** Database column category SqlType(varchar), Length(32,true) */
    val category: Rep[String] = column[String]("category", O.Length(32,varying=true))
    /** Database column sub_category SqlType(varchar), Length(32,true) */
    val subCategory: Rep[String] = column[String]("sub_category", O.Length(32,varying=true))

    /** Primary key of TransactionsClassification (database name transactions_classification_pkey) */
    val pk = primaryKey("transactions_classification_pkey", (description, category, subCategory))

    /** Foreign key referencing Categories (database name transactions_classification_category_fkey) */
    lazy val categoriesFk = foreignKey("transactions_classification_category_fkey", category, Categories)(r => r.category, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing CategoryMatch (database name transactions_classification_category_sub_category_fkey) */
    lazy val categoryMatchFk = foreignKey("transactions_classification_category_sub_category_fkey", (category, subCategory), CategoryMatch)(r => (r.category, r.subCategory), onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
    /** Foreign key referencing SubCategories (database name transactions_classification_sub_category_fkey) */
    lazy val subCategoriesFk = foreignKey("transactions_classification_sub_category_fkey", subCategory, SubCategories)(r => r.subCategory, onUpdate=ForeignKeyAction.Cascade, onDelete=ForeignKeyAction.NoAction)
  }
  /** Collection-like TableQuery object for table TransactionsClassification */
  lazy val TransactionsClassification = new TableQuery(tag => new TransactionsClassification(tag))
}
/** Entity class storing rows of table Accounts
   *  @param id Database column id SqlType(bigserial), AutoInc, PrimaryKey
   *  @param name Database column name SqlType(varchar), Length(32,true)
   *  @param accountType Database column account_type SqlType(int8)
   *  @param initialAmount Database column initial_amount SqlType(numeric)
   *  @param apiUser Database column api_user SqlType(varchar), Length(64,true), Default(None)
   *  @param apiPass Database column api_pass SqlType(varchar), Length(64,true), Default(None)
   *  @param sharingRatio Database column sharing_ratio SqlType(numeric), Default(Some(1.00)) */
  case class AccountsRow(id: Long, name: String, accountType: Long, initialAmount: scala.math.BigDecimal, apiUser: Option[String] = None, apiPass: Option[String] = None, sharingRatio: Option[scala.math.BigDecimal] = Some(scala.math.BigDecimal("1.00")))

  /** Entity class storing rows of table AccountTypes
   *  @param id Database column id SqlType(bigserial), AutoInc, PrimaryKey
   *  @param name Database column name SqlType(varchar), Length(32,true), Default(None)
   *  @param rowsToSkip Database column rows_to_skip SqlType(int4)
   *  @param delimiter Database column delimiter SqlType(varchar), Length(8,true)
   *  @param dateFormat Database column date_format SqlType(varchar), Length(32,true)
   *  @param finalRow Database column final_row SqlType(varchar), Length(32,true), Default(None)
   *  @param transactionDatePos Database column transaction_date_pos SqlType(int4)
   *  @param exchangeDatePos Database column exchange_date_pos SqlType(int4)
   *  @param receiverPos Database column receiver_pos SqlType(_int4), Length(10,false)
   *  @param purposePos Database column purpose_pos SqlType(_int4), Length(10,false)
   *  @param amountInPos Database column amount_in_pos SqlType(int4)
   *  @param amountOutPos Database column amount_out_pos SqlType(int4)
   *  @param currencyPos Database column currency_pos SqlType(int4), Default(None)
   *  @param currencyDefault Database column currency_default SqlType(varchar), Length(3,true)
   *  @param encoding Database column encoding SqlType(varchar), Length(16,true), Default(None)
   *  @param apiOauthUrl Database column api_oauth_url SqlType(varchar), Length(512,true), Default(None)
   *  @param apiAuthorization Database column api_authorization SqlType(varchar), Length(512,true), Default(None)
   *  @param apiReportUrl Database column api_report_url SqlType(varchar), Length(512,true), Default(None)
   *  @param color Database column color SqlType(varchar), Length(8,true), Default(None) */
  case class AccountTypesRow(id: Long, name: Option[String] = None, rowsToSkip: Int, delimiter: String, dateFormat: String, finalRow: Option[String] = None, transactionDatePos: Int, exchangeDatePos: Int, receiverPos: String, purposePos: String, amountInPos: Int, amountOutPos: Int, currencyPos: Option[Int] = None, currencyDefault: String, encoding: Option[String] = None, apiOauthUrl: Option[String] = None, apiAuthorization: Option[String] = None, apiReportUrl: Option[String] = None, color: Option[String] = None)

  /** Entity class storing rows of table Categories
   *  @param category Database column category SqlType(varchar), PrimaryKey, Length(32,true)
   *  @param color Database column color SqlType(varchar), Length(8,true), Default(None) */
  case class CategoriesRow(category: String, color: Option[String] = None)

  /** Entity class storing rows of table CategoryMatch
   *  @param category Database column category SqlType(varchar), Length(32,true)
   *  @param subCategory Database column sub_category SqlType(varchar), Length(32,true)
   *  @param color Database column color SqlType(varchar), Length(8,true), Default(None) */
  case class CategoryMatchRow(category: String, subCategory: String, color: Option[String] = None)

  /** Entity class storing rows of table SubCategories
   *  @param subCategory Database column sub_category SqlType(varchar), PrimaryKey, Length(32,true) */
  case class SubCategoriesRow(subCategory: String)

  /** Entity class storing rows of table TaggedClassification
   *  @param description Database column description SqlType(varchar), Length(128,true)
   *  @param category Database column category SqlType(varchar), Length(32,true)
   *  @param subCategory Database column sub_category SqlType(varchar), Length(32,true)
   *  @param tag Database column tag SqlType(varchar), Length(32,true) */
  case class TaggedClassificationRow(description: String, category: String, subCategory: String, tag: String)

  /** Entity class storing rows of table TaggedTransactions
   *  @param transactionId Database column transaction_id SqlType(int8)
   *  @param tag Database column tag SqlType(varchar), Length(32,true) */
  case class TaggedTransactionsRow(transactionId: Long, tag: String)

  /** Entity class storing rows of table Tags
   *  @param tag Database column tag SqlType(varchar), PrimaryKey, Length(32,true) */
  case class TagsRow(tag: String)

  /** Entity class storing rows of table Transactions
   *  @param id Database column id SqlType(bigserial), AutoInc, PrimaryKey
   *  @param accountId Database column account_id SqlType(int8)
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
  case class TransactionsRow(id: Long, accountId: Long, transactionDate: Option[java.sql.Date] = None, exchangeDate: Option[java.sql.Date] = None, receiver: Option[String] = None, purpose: Option[String] = None, amount: Option[scala.math.BigDecimal] = None, currency: Option[String] = None, category: Option[String] = None, subCategory: Option[String] = None, comment: Option[String] = None, approved: Boolean)

  /** Entity class storing rows of table TransactionsClassification
   *  @param description Database column description SqlType(varchar), Length(128,true)
   *  @param category Database column category SqlType(varchar), Length(32,true)
   *  @param subCategory Database column sub_category SqlType(varchar), Length(32,true) */
  case class TransactionsClassificationRow(description: String, category: String, subCategory: String)
