# vim: set ft=ruby

God.watch do |w|
  w.name = "watering-pi"
  w.start = "#{ENV['HOME']}/.nodenv/shims/hubot -a xmpp -n wpi"
  w.dir = "#{ENV['HOME']}/watering-pi"
  w.log = "#{ENV['HOME']}/watering-pi/hubot.log"
  w.env = ENV.select{|k,v| k.start_with? 'HUBOT' }
  w.keepalive
end

