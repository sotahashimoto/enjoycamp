# Enjoycamp!

<img width="757" alt="top-image" src="https://user-images.githubusercontent.com/67676627/100733639-d0f90080-3411-11eb-987f-249aa0f9c479.png">

## 概要

「キャンプをもっと楽しく!仲間と楽しく!」

自分に合ったキャンプ場を探したり、一緒にキャンプに行く人を見つける事ができるサービスです。

## URL

https://enjoycamp.work/

【かんたんログイン】ボタンからテストユーザーとしてログインできます。

<!-- ## 制作の背景 -->

## 主な利用シーン

- 良いキャンプ場を知りたい
- 一緒にキャンプに行く仲間が欲しい

## 機能一覧

- 検索機能 （キャンプ場の名前、住所検索）
- マップ表示 （Google MapAPIで取得した住所から表示）

## 環境・使用技術

### フロントエンド

- Bootstrap 4.5.0
- SCSS (BEM)
- JavaScript、jQuery、Ajax

### バックエンド

- Ruby 2.5.7
- Rails 5.2.4.4

### 開発環境

- Docker/Docker-compose
- MySQL2

### 本番環境

- AWS (EC2、RDS for MySQL、Route53、ALB)
- MySQL2
- Nginx、Puma
- CircleCIを用いてdocker-composeでコンテナを構築しCapistranoにより自動デプロイ

### インフラ構成図

<img width="622" alt="インフラ構成図" src="https://user-images.githubusercontent.com/67676627/100733013-eae61380-3410-11eb-8db4-000e448fc02b.png">

### テスト

- Rspec (単体／結合） 計 40
- CircleCIを用いてDocker-composeでコンテナを構築し自動テスト

### その他使用技術

- 非同期通信 (いいね機能)
- 外部API(Google MapAPI)
- HTTPS接続 (AWS Certificate Manager)

## ER 図

<img width="645" alt="ER図" src="https://user-images.githubusercontent.com/67676627/100732487-1ddbd780-3410-11eb-9706-507599a37d45.png">

<!-- ## 設計書 -->

## About me

新卒で3年間事務職として病院に勤務しておりました。その後土木資材の営業を経験し、2020年7月からWebエンジニアを目指して勉強中です。<br>
前職の経験を活かし製作した病院検索アプリ
- hosnavi→https://hosnavi.work/
- github→https://github.com/sotahashimoto/hosnavi