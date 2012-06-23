step "I sign up as new user" do
  step "I am on the 'new user registration' page"
  fill_in 'Email', with: 'user@example.org'
  fill_in 'Username', with: 'Batman'
  fill_in 'Password', with: 'password'
  fill_in 'Password confirmation', with: 'password'
  click_button 'Sign up'
  step "I should see 'Welcome' within '.alert-success'"
  @user = User.last
  @board = @user.boards.last
end

step "I am a registered user" do
  @user = create :user
  @board = @user.boards.last
  step 'I am on the "new user session" page'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: 'password'
  click_button 'Sign in'
end
