name := "SlickGenerator"

version := "2.0.0"

scalaVersion := "2.11.7"

libraryDependencies += "com.typesafe.slick" %% "slick-codegen" % "3.2.2"
libraryDependencies += "org.postgresql" % "postgresql" % "42.2.2"

scalaSource in Compile := baseDirectory.value / "."
