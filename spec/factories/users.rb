FactoryBot.define do
  factory :user do
    name                  { 'test' }
    email                 { 'test@nenpi.com' }
    password              { 'a11111' }
    password_confirmation { password }
  end
end
