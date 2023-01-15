package models

/** Created by marco on 28.11.15.
  */
case class Category(
    name: String,
    color: String,
    subCategories: List[Category] = List()
)
