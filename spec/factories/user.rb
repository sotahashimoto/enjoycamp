FactoryBot.define do
  factory :user do
    name                        {"サンプル太郎"}
    sequence(:email) { |n| "hiro#{n}@example.com"}
    password                    {"00000000"}
    password_confirmation       {"00000000"}
  end
end