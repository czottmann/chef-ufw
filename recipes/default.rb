include_recipe "apt"

package "ufw" do
  action :upgrade
end

execute "enable UFW" do
  user "root"
  command "ufw allow ssh; echo y | ufw enable" # "Command may disrupt existing ssh connections. Proceed with operation (y|n)?"
end

template "/etc/init/ufw.conf" do
  source "ufw.conf"
  owner "root"
  group "root"
  mode 00644
end

template "/etc/ufw/applications.d/postgresql" do
  source "postgresql"
  owner "root"
  group "root"
  mode 00644
end