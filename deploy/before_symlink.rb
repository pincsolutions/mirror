template "#{release_path}/config/config.yml" do
  local true
  variables({test_var: "Test Me!", cas: node[:cas]})
  source "#{release_path}/config/config.yml.erb"
end
