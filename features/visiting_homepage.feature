Feature: Visiting Homepage

Scenario: Successful transfer to signin
  Given a user visits the home page
  When the user decides to click on the Sign Up Now button
  Then he should see the signup page
  And he should see a Sign up heading

