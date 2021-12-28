# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "博麗霊夢", address: "博麗神社", email: "reimu@hakurei")
User.create(name: "霧雨魔理沙", address: "魔法の森", email: "marisa@kirisame.com")
User.create(name: "アリス・マーガトロイド", address: "魔法の森", email: "alice@magi")
User.create(name: "ルーミア", address: "博麗神社周辺", email: "rumia@kouya")
User.create(name: "チルノ", address: "霧の湖", email: "cirno@brume")
User.create(name: "紅美鈴", address: "紅魔館", email: "meirin@kouma")