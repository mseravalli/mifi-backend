name := "mi-fi"

version := "3.3.3"

scalaVersion := "2.12.4"

lazy val root = (project in file(".")).enablePlugins(PlayScala)

resolvers += "Sonatype Snapshots" at "https://oss.sonatype.org/content/repositories/snapshots/"

libraryDependencies ++= Seq(
  "com.github.tototoshi" %% "scala-csv" % "1.3.5",
  "com.typesafe.play" %% "play-json" % "2.6.9",
  "com.typesafe.slick" %% "slick" % "3.2.2",
  "com.typesafe.play" %% "play-slick" % "3.0.0",
  "javax.inject" % "javax.inject" % "1",
  "joda-time" % "joda-time" % "2.6",
  "org.asynchttpclient" % "async-http-client" % "2.4.4",
  "org.mockito" % "mockito-core" % "1.10.17" % "test",
  "org.postgresql" % "postgresql" % "42.2.2",
  "org.scala-lang.modules" %% "scala-async" % "0.9.7",
  ehcache,
  guice,
  jdbc,
  ws,
  "org.specs2" %% "specs2-matcher" % "3.8.9" % Test,
  "org.specs2" %% "specs2-matcher-extra" % "3.8.9" % Test,
  specs2 % Test
)

scalacOptions in Test ++= Seq("-Yrangepos")

