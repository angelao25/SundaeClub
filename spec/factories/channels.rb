FactoryBot.define do
  factory :channel do
    id { 1 }
    name { "MyText" }
    description { "MyText" }
    slug { "MyText" }
    created_at { "2023-03-24 18:14:16" }
    updated_at { "2023-03-24 18:14:16" }
    organisation
  end
end
