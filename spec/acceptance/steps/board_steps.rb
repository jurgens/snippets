step "I have a board" do
  @board ||= @user.boards.create name: "Board"
end