Vagrant.configure(2) do |options|
  options.vm.box = 'ubuntu/trusty64'
  options.vm.network 'forwarded_port', guest: 3000, host: 3000
  options.vm.provision 'shell', inline: '/vagrant/tasks/provision', keep_color: true

  options.vm.provider 'virtualbox' do |virtualbox|
    virtualbox.name = 'scaffolding-front-end'
    virtualbox.memory = '512'
  end
end
