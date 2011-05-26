include_recipe "apt"

package "ufw" do
  action :upgrade
end

execute "enable UFW" do
  user "root"
  command "ufw enable"
end
