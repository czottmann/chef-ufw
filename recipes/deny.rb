node[:ufw][:deny].each do |deny|
  execute "deny #{deny}" do
    user "root"
    command "ufw deny #{deny}"
  end
end
