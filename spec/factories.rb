Factory.define :user do |user|
  user.name                  "Ryan Zschau"
  user.email                 "ryan@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end