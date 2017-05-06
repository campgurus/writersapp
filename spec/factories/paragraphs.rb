FactoryGirl.define do
  factory :paragraph do |f|
    f.writing_id 1
    f.par_num 1
    f.body "this is what the paragraph says"
  end

  # This will use the User class (Admin would have been guessed)
  # factory :admin, class: User do
  #   first_name "Admin"
  #   last_name  "User"
  #   admin      true
  # end
end