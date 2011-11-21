require 'spec_helper'

describe Category do
  
  before(:each) do
    @attr = { :name => "Example Category", :description => "Sample category description" }
  end
  
  it "should create a new instance given valid attributes" do
    Category.create!(@attr)
  end
  
  it "should require a name" do
    no_name_category = Category.new(@attr.merge(:name => ""))
    no_name_category.should_not be_valid
  end
  
  it "should require some description" do
    no_description_category = Category.new(@attr.merge(:description => ""))
    no_description_category.should_not be_valid
  end
  
  it "should reject category names that are too long" do
    long_name = "a" * 51
    long_name_category = Category.new(@attr.merge(:name => long_name))
    long_name_category.should_not be_valid
  end
  
  it "should reject duplicate category name" do
  # Put a user with given name into the database.
    Category.create!(@attr)
    category_with_duplicate_name = Category.new(@attr)
    category_with_duplicate_name.should_not be_valid
  end
  
  it "should reject email addresses identical up to case" do
    upcased_name = @attr[:name].upcase
    Category.create!(@attr.merge(:name => upcased_name))
    category_with_duplicate_name = Category.new(@attr)
    category_with_duplicate_name.should_not be_valid
  end
  
    
end
