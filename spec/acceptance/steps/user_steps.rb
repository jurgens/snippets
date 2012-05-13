step "I am on the :page_name page" do |page_name|
  path_components = page_name.split(/\s+/)
  path = path_components.push('path').join('_').to_sym
  visit self.send(path)
end