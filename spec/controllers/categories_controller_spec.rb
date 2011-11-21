require 'spec_helper'

describe CategoriesController do
  render_views
  
  describe "GET 'show'" do
    
    before(:each) do
      @category = Factory(:category)
    end
    
    it "should be successful" do
      get :show, :id => @category
      response.should be_success
    end
    
    it "should find the right category" do
      get :show, :id => @category
      assigns(:category).should == @category
    end
    
    it "should have the right title" do
      get :show, :id => @category
      response.should have_selector("title", :content => @category.name)
    end
    
    it "should have specific category heading" do
      get :show, :id => @category
      response.should have_selector("h1", :content => @category.name)
    end
    
    it "should have the specific category description" do
      get :show, :id => @category
      response.should have_selector("p", :class => "description")
    end
  end
  
  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "New category")
    end
  end
  
  
end
