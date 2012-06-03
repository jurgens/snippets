step 'I submit new snippet' do
  step 'I am on the "new snippet" page'
  fill_in 'Name', with: 'new snippet code'
  fill_in 'Body', with: 'def hello; end;'
  click_button 'Submit'
end