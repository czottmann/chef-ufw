node[:ufw][:allow].each do |allow|
  execute "allow #{allow}" do
    user "root"
    command "ufw allow #{allow}"
  end
end
