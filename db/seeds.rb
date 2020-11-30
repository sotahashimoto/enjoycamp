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
      image: File.open("./app/assets/images/member1.jpg"),
      name: "かたつむり",
      email: "1@1.com",
      favorite_place: "舞洲バーベキューパーク",
      introduction: "年齢:平成6年男子
      キャンプ歴:2019年10月～
      拠点:山陰
      テント:サーカスtc、名も無きスクリーンタープ
      スタイル:ソロ",
      password: "aaaaaa",
      password_confirmation: "aaaaaa"
    },
    {
      image: File.open("./app/assets/images/member2.jpg"),
      name: "ケニー",
      email: "2@2.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa"
    },
    {
      image: File.open("./app/assets/images/member3.jpg"),
      name: "ごみちゃん",
      email: "3@3.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa"
    }
  ]
)

Campsite.create!(
  [
    {
      image: File.open("./app/assets/images/2.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/1.png"),
      name: "スノーピーク箕面キャンプ",
      postcode: "5630252",
      address: "大阪府箕面市下止々呂美962"
    },
    {
      image: File.open("./app/assets/images/3.jpg"),
      name: "スノーピーク箕面キャンプ",
      postcode: "5630252",
      address: "大阪府箕面市下止々呂美962"
    },
    {
      image: File.open("./app/assets/images/4.jpg"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "かたつむりかたつむりかたつむりかた",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/5.png"),
      name: "舞洲バーベキューパーク",
      postcode: "5540042",
      address: "大阪府大阪市此花区北港緑地2-1-107"
    },
    {
      image: File.open("./app/assets/images/6.png"),
      name: "スノーピーク箕面キャンプ",
      postcode: "5630252",
      address: "大阪府箕面市下止々呂美962"
    }
  ]
)