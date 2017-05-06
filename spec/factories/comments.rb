FactoryGirl.define do
  factory :comment do
    body "MyText"
    commentable_id 1
    commentable_type "MyString"
  end

  # This will use the User class (Admin would have been guessed)
  # factory :admin, class: User do
  #   first_name "Admin"
  #   last_name  "User"
  #   admin      true
  # end
end