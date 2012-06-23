step "I am on the :page_name page" do |page_name|
  path_components = page_name.split(/\s+/)
  path = path_components.push('path').join('_').to_sym
  visit self.send(path)
end

step "I should see :something" do |something|
  page.should have_content something
end

step "I should see :something within :selector" do |something, selector|
  within selector do
    page.should have_content something
  end
end

step "I should not see :something" do |something|
  page.should_not have_content something
end

step "show me the page" do
  save_and_open_page
end