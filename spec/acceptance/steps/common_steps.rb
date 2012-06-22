step "I should see :something" do |something|
  page.should have_content something
end

step "I should not see :something" do |something|
  page.should_not have_content something
end

step "show me the page" do
  save_and_open_page
end