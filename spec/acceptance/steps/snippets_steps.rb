step 'I submit new snippet' do
  step 'I am on the "new snippet" page'
  fill_in 'Name', with: 'new snippet code'
  fill_in 'Body', with: 'def hello; end;'
  select 'Board', from: 'Board'
  click_button 'Submit'
end

step "I have snippet named :name" do |name|
  step "I have a board"
  @user.snippets.create! name: name, board: @board, body: "def foo\n  puts \"Hello\"\nend"
end

step "I search for :term" do |term|
  step "I am on the root page"
  fill_in 'search', with: term
  page.execute_script '$("form#search-form").submit();'
end