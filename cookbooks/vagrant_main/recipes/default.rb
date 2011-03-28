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
