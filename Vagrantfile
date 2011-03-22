Vagrant::Config.run do |config|
  config.vm.box = "base"

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug

    chef.cookbooks_path = "cookbooks"
    chef.add_recipe("vagrant_main")

    chef.json.merge!(
    {
        :nodejs =>
        {
            :version => "0.4.3"
        }
    })
  end

  # IP address
  config.vm.network "44.44.44.44"

  # Port forwarding
  config.vm.forward_port("ssh", 22, 2323)
  config.vm.forward_port("cast_agent", 49443, 11111)
end
