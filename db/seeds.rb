# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      name: "かたつむり",
      email: "1@1.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa"
    },
    {
      name: "ケニー",
      email: "test2@user.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa"
    },
    {
      name: "ごみちゃん",
      email: "test3@user.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa"
    }
  ]
)

Campsite.create!(
  [
    {
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      name: "スノーピーク箕面キャンプフィールド",
      postcode: "5630252",
      address: "大阪府箕面市下止々呂美962"
    }
  ]
)