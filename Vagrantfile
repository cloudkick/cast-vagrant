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
            :version => "0.4.6"
        },
        :npm =>
        {
            :revision => "v1.0.1rc8"
        }
    })
  end

  # IP address
  config.vm.network "44.44.44.44"

  # Port forwarding
  config.vm.forward_port("ssh", 22, 2323)
  config.vm.forward_port("cast_agent", 49443, 11111)
  config.vm.forward_port("node-inspector", 8080, 8080)
  config.vm.forward_port("node-debugger", 5858, 5858)
end
