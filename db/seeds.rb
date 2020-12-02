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
      name: "テストユーザー",
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
      name: "キャンプ太郎",
      email: "2@2.com",
      favorite_place: "満願ビレッジオートキャンプ場",
      password: "aaaaaa",
      password_confirmation: "aaaaaa"
    },
    {
      image: File.open("./app/assets/images/member3.jpg"),
      name: "山田キャンプ",
      email: "3@3.com",
      favorite_place: "石岡市つくばねオートキャンプ場",
      password: "aaaaaa",
      password_confirmation: "aaaaaa"
    }
  ]
)

Campsite.create!(
  [
    {
      image: File.open("./app/assets/images/campsite-images1.png"),
      name: "清水公園キャンプ場",
      postcode: "2780043",
      address: "千葉県野田市清水906"
    },
    {
      image: File.open("./app/assets/images/campsite-images2.png"),
      name: "くぬぎの森キャンプ場",
      postcode: "7295132",
      address: "広島県庄原市東城町三坂962-1"
    },
    {
      image: File.open("./app/assets/images/campsite-images3.png"),
      name: "満願ビレッジオートキャンプ",
      postcode: "3691625",
      address: "埼玉県秩父郡皆野町下日野沢3902-1"
    },
    {
      image: File.open("./app/assets/images/campsite-images4.png"),
      name: "太陽の丘オートキャンプ場",
      postcode: "3291412",
      address: "栃木県さくら市喜連川5686"
    },
    {
      image: File.open("./app/assets/images/campsite-images5.png"),
      name: "ミリーズラブ",
      postcode: "3771612",
      address: "群馬県吾妻郡嬬恋村大前細原2092-65"
    },
    {
      image: File.open("./app/assets/images/campsite-images6.png"),
      name: "キャンプアンドキャビンズ那須高原",
      postcode: "3250001",
      address: "栃木県那須郡那須町高久甲5861-2"
    },
    {
      image: File.open("./app/assets/images/campsite-images7.png"),
      name: "つくばねオートキャンプ場",
      postcode: "3150155",
      address: "茨城県石岡市小幡2132-14"
    },
    {
      image: File.open("./app/assets/images/campsite-images8.png"),
      name: "北軽井沢スイートグラス",
      postcode: "3771412",
      address: "千葉県野田市清水906"
    },
    {
      image: File.open("./app/assets/images/campsite-images9.png"),
      name: "久多の里オートキャンプ場",
      postcode: "5200461",
      address: "京都府京都市左京区久多川合町151"
    },
    {
      image: File.open("./app/assets/images/campsite-images10.png"),
      name: "二坊温泉オートキャンプ場",
      postcode: "5203252",
      address: "滋賀県湖南市岩根678-28"
    },
    {
      image: File.open("./app/assets/images/campsite-images11.png"),
      name: "飛雪の滝キャンプ場",
      postcode: "5195718",
      address: "三重県南牟婁郡紀宝町浅里1409-1"
    },
    {
      image: File.open("./app/assets/images/campsite-images12.png"),
      name: "赤目四十八滝キャンプ場",
      postcode: "5180469",
      address: "三重県名張市赤目町長坂941-1"
    }
  ]
)

Recruitment.create!(
  [
    {
      image: File.open("./app/assets/images/recruitment1.png"),
      user_id: "2",
      campsite_id: "1",
      scheduled_start_date: "2021-01-01",
      scheduled_end_date: "2021-01-02",
      title: "年明けキャンプ!",
      content: "初心者の方でも大丈夫！年越しキャンプで最高の1年を迎えましょう。工夫とアイデアで初心者でも年越しキャンプは楽しく過ごせます。 ただし下準備は必要なのでその点が問題ない方どんどん参加してください集合場所：キャンプ駅。集合時間：9時集合",
      capacity: "1"
    }
  ]
)