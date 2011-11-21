# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                     "Milan Mondal"
  user.email                    "milan@example.com"
  user.password                 "foobar"
  user.password_confirmation    "foobar"
end

# By using the symbol ':category', we get Factory Girl to simulate the User model.
Factory.define :category do |category|
  category.name                   "Saree"
  category.description            "Designer Saree, Embroidery Saree, Prinetd Saree"  
end