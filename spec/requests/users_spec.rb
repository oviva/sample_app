require 'spec_helper'

describe "Users" do
  
  describe "signup" do
    
    describe "success" do
    
      it "should make a new user" do
      lambda do
        visit signup_path
        fill_in "Name", :with => "Example User"
        fill_in "Email", :with => "user@example.com"
        fill_in "Password", :with => "foobar"
        fill_in "Confirmation", :with => "foobar"
        click_button
        response.should have_selector("div.flash.success",
                                      :content => "Welcome")
        response.should render_template('users/show')
        end.should change(User, :count).by(1)
      end
    end
  end  
end
