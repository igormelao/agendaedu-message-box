FactoryBot.define do
  factory :message do
    body     { FFaker::Lorem.paragraph }
    sender   { create(:user) }
    receiver { create(:user) }
    status   { 0 }
  end
end
