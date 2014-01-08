template "#{release_path}/config/config.yml" do
  local true
  test_var = "test me!"
  source "#{release_path}/config/config.yml.erb"
end
