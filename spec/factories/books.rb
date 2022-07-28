FactoryBot.define do
  factory :book do
    sequence(:title) { |n| "Name of the Wind #{n}" }
    sequence(:author) { |n| "Patrick Rothfuss #{n}" }
    isbn {'1234567891234'}
  end
end
