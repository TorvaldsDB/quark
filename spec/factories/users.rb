FactoryBot.define do
  sequence(:email) { |n| "person#{n}@example.com" }
  # define user's aliases author and commenter
  factory :user, aliases: [:author, :commenter] do
    # Faker::Name.name with {} is same to Faker::Name.unique.name
    name { Faker::Name.name }
    # email { Faker::Internet.email }
    email
    password { Faker::Internet.password(10, 20, true, true) }
    admin false

    factory :admin do
      admin true
    end

    factory :user_with_posts do
      transient do
        posts_count 5
      end

      after(:create) do |user, evaluator|
        create_list(:micropost, evaluator.posts_count, user: user)
      end
    end
  end

  # You can also define admin in this way
  # assign the parent explicitly
  # factory :admin, parent: :user do
  #   admin true
  # end

  # You can also define like this
  # factory :amdin, class: User do
  #   admin true
  # end
end
