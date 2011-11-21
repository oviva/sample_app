class Category < ActiveRecord::Base
  attr_accessible :name, :description
  
  validates      :name,                 :presence   =>  true,
                                        :length     => { :maximum => 50 },
                                        :uniqueness => { :case_sensitive => false }
  
  validates      :description,          :presence   =>  true
end
