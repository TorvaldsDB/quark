FactoryBot.define do
  # define user's aliases author and commenter
  factory :user, aliases: [:author, :commenter] do
    # Faker::Name.name with {} is same to Faker::Name.unique.name
    name { Faker::Name.name }
    email { Faker::Internet.email }
    # email use sequence instead of Faker
    # sequence(:email){|n|"tester#{n}@example.com"}
    password { Faker::Internet.password(10, 20, true, true) }
    admin false

    # You can use trait to create user, example:
    # FactoryBot.create(:user, :activated)
    trait :activated do
      activated true
      activated_at { 21.years.ago }
    end

    trait :admin do
      admin true
    end

    trait :with_posts do
      after(:create) { |user| create_list(:micropost, 2, user: user) }
    end

    factory :admin do
      admin true

      # You can use trait to define factory
      # FactoryBot.create(:admin, :activated) is same to
      # FactoryBot.create(:admin_activated)
      factory :admin_activated, traits: [:activated]
    end

    factory :user_with_posts do
      transient do
        posts_count 2
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

  # You can also define like this.
  # This way is not same to parent: :user.
  # You must overwrite the attributes again
  # factory :admin, class: User do
  #   name { Faker::Name.name }
  #   email { Faker::Internet.email }
  #   password { Faker::Internet.password(10, 20, true, true) }
  #   admin true
  # end
end
