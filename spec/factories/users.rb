FactoryGirl.define do
	sequence :email do |n|
		"test#{n}@example.com"
	end

  factory :user do
   first_name 'johnny'
   last_name 'walker'
   email {generate :email}
   password "asdfasdf"
   password_confirmation "asdfasdf"
   phone "1234567890"
   ssn 1234
   company "XYZ"
  end

  factory :admin_user, class: "AdminUser" do
   first_name 'Admin'
   last_name 'User'
   email {generate :email}
   password "asdfasdf"
   password_confirmation "asdfasdf"
   phone "1234567890"
   ssn 1234
   company "XYZ"
  end

  factory :non_authorized_user, class: "User" do
   first_name 'Non'
   last_name 'Authorized'
   email {generate :email}
   password "asdfasdf"
   password_confirmation "asdfasdf"
   phone "1234567890"
   ssn 1234
   company "XYZ"
  end
end

