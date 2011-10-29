require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right tilte" do
      get 'home'
      response.should have_selector("title", :content => "Myshaadi.com | Home")
    end    
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right tilte" do
      get 'contact'
      response.should have_selector("title", :content => "Myshaadi.com | Contact")
    end
  end
  
  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right tilte" do
      get 'about'
      response.should have_selector("title", :content => "Myshaadi.com | About")
    end
  end
end
