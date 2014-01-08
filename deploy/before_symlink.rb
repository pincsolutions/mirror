template "#{release_path}/config/config.yml" do
  local true
  test_var = "test me!"
  cas = node[:cas]
  source "#{release_path}/config/config.yml.erb"
end
