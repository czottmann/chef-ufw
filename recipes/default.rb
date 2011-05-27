include_recipe "apt"

package "ufw" do
  action :upgrade
end

execute "enable UFW" do
  user "root"
  command "ufw allow ssh; echo y | ufw enable" # "Command may disrupt existing ssh connections. Proceed with operation (y|n)?"
end
