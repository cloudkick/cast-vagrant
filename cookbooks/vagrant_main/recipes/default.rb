# vagrant_main cookbook
include_recipe "apt"
include_recipe "build-essential"
include_recipe "openssl"
include_recipe "runit"
include_recipe "nodejs"
include_recipe "npm"

%w{ 
  curl git-core
  scons
}.each do |pkg|
    package "#{pkg}" do
        action :install
    end
end

# Cast specific stuff
bash "create_cast_directories" do
  user "root"

  cwd "/tmp/"
  code <<-EOH
    mkdir -p /opt/cast/services-enabled
    chown -R vagrant:vagrant /opt/cast
  EOH
  not_if { FileTest.exists?("/opt/cast/services-enabled") }
end
