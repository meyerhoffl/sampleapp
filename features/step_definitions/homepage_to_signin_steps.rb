Given /^a user visits the home page$/ do
  visit root_path
end

When /^the user decides to click on the Sign Up Now button$/ do
  click_link('Sign up now')
end


Then /^he should see the signup page$/ do
  page.has_title? "Sign Up"
end

Then /^he should see a Sign up heading$/ do
  page.should have_selector("h1", text: "Sign up")
end
