# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.8.1"
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

$adjust_user_script = <<SCRIPT
sed -i -e "s/1000/$HOST_UID/" /etc/passwd
sed -i -e "s/1000/$HOST_GID/" /etc/passwd
sed -i -e "s/1000/$HOST_GID/" /etc/group
chown $HOST_UID:$HOST_GID /home/ie0424/ || true
find /home/ie0424 -maxdepth 3 -not -path "/home/ie0424/.config/*" -not -path "/home/ie0424/.config" | xargs -I'{}' sh -c "chown $HOST_UID:$HOST_GID '{}' || true"
SCRIPT

$adjust_user_script_sync = <<SCRIPT
sed -i -e "s/1000/$HOST_UID/" /etc/passwd
sed -i -e "s/1000/$HOST_GID/" /etc/passwd
sed -i -e "s/1000/$HOST_GID/" /etc/group
chown $HOST_UID:$HOST_GID /home/ie0424/ || true
chown -R $HOST_UID:$HOST_GID /home/ie0424/.ssh || true
SCRIPT

Vagrant.configure("2") do |config|

  config.vm.hostname = "ie-0424"
  config.vm.provider "docker" do |d|
    d.image = "jsdanielh/ie-0424:0.0.2"
    d.has_ssh = true
    d.pull = true
  end
  config.vm.provision "shell", inline: $adjust_user_script,
    env: {
      "HOST_UID" => Process.uid,
      "HOST_GID" => Process.gid
    }
  config.vm.network :forwarded_port, host: 9090, guest: 8080, auto_correct: true
  config.ssh.username = "ie0424"
  config.ssh.forward_agent = true
  config.ssh.pty = true
  config.vm.synced_folder ".", "/home/ie0424/ws"
  config.vm.provision "file",
    source: "~/.gitconfig",
    destination: "/home/ie0424/.gitconfig" if File.exist?(ENV["HOME"] + "/.gitconfig")
end
