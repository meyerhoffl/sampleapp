require 'spec_helper'


describe "StaticPages" do

subject {page}

  describe "Home page" do
    before {visit root_path}

    it {should have_selector('h1', text: 'Sample App')}

    it "should have the base title" do
      page.has_title? "Ruby on Rails Tutorial Sample App"
    end

    it "should not have a custom page title" do
      page.has_no_title? '|Home'
    end
  end

  describe "Help page" do
    before {visit help_path}

    it {should have_selector( 'h1', text: 'Help')}
  end
    it "should have right title" do
      page.has_title? "Ruby on Rails Tutorial Sample | Help"
    end



  describe "About page" do
    before {visit about_path}

    it {should have_selector("h1", text: "About")}

end

    describe "Contact page" do
      before{visit contact_path}
      it {should have_content("Contact")}

      it "should have the h1 'Contact'" do
        page.should have_selector('h1', text: 'Contact')
      end

      it "should have the title 'Contact'" do
        page.has_title? "Ruby on Rails Tutorial Sample App |"
      end
  end
end