step "I am on the :page_name page" do |page_name|
  path_components = page_name.split(/\s+/)
  path = path_components.push('path').join('_').to_sym
  visit self.send(path)
end

step "I am a registered user" do
  @user = create :user
  step 'I am on the "new user session" page'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: 'password'
  click_button 'Sign in'
end