name := "cinv"

version := "1.0"

scalaVersion := "2.11.7"

libraryDependencies += "org.apache.spark" %% "spark-core" % "1.6.0"
libraryDependencies += "org.apache.spark" %% "spark-mllib" % "1.6.0"
libraryDependencies += "com.typesafe.slick" %% "slick-codegen" % "3.0.0"
libraryDependencies += "org.postgresql" % "postgresql" % "9.4.1207"

libraryDependencies ++= Seq("org.specs2" %% "specs2-core" % "3.7" % "test")

scalacOptions in Test ++= Seq("-Yrangepos")

scalaSource in Compile := baseDirectory.value / "."