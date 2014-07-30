# vim: set ft=ruby

God.watch do |w|
  w.name = "watering-pi"
  w.start = "/home/pi/.nodenv/shims/hubot -a xmpp -n wpi"
  w.dir = "/home/pi/watering-pi"
  w.log = "/home/pi/watering-pi/hubot.log"
  w.env = ENV.select{|k,v| k.start_with? 'HUBOT' }
  w.uid = 'pi'
  w.gid = 'pi'
  w.keepalive
end

