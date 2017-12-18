FactoryBot.define do
  factory :message do
    subject  { FFaker::Lorem.sentence }
    body     { FFaker::Lorem.paragraph }
    sender   { create(:user) }
    receiver { create(:user) }
    status   { 0 }
  end
end
