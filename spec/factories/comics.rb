FactoryBot.define do
  factory :comic do
    title                   {'aiueo'}
    author                  {'kakikukeko'}
    illustrator             {nil}
    genre_id                {Faker::Number.between(from: 2, to: 18)}
    magazine_id             {Faker::Number.between(from: 2, to: 6)}
    decade_id               {Faker::Number.between(from: 2, to: 14)}
    publisher               {nil}
    publication             {nil}
    impression              {nil}
    association :user

    after(:build) do |comic|
      comic.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end