FactoryBot.define do
  factory :micropost do
    # if you want to use author, you must have the association
    # belongs_to :author, class_name: 'User', foreign_key: :user_id
    # in the Micropost model.
    # author
    # OR
    # association :author, factory: :user
    # because you have used aliases in the factory user,
    # author is best.

    user

    content { Faker::Book.title }
  end
end
