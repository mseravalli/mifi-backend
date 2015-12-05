name := "mi-fi"

version := "0.2.0"

scalaVersion := "2.11.4"

lazy val root = (project in file(".")).enablePlugins(PlayScala)

resolvers += "Sonatype Snapshots" at "https://oss.sonatype.org/content/repositories/snapshots/"

libraryDependencies ++= Seq(
  "com.google.inject" % "guice" % "3.0",
  "javax.inject" % "javax.inject" % "1",
  "org.webjars" % "bootstrap" % "3.3.1",
  "org.webjars" % "angularjs" % "1.3.8",
  "org.webjars" % "angular-ui-bootstrap" % "0.12.0",
  "com.github.mauricio" %% "postgresql-async" % "0.2.15",
  "org.mockito" % "mockito-core" % "1.10.17" % "test",
  "joda-time" % "joda-time" % "2.6",
  "com.github.tototoshi" %% "scala-csv" % "1.2.0",
  "org.scala-lang.modules" %% "scala-async" % "0.9.2"
)
