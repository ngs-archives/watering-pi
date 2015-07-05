# vim: set ft=ruby

God.watch do |w|
  env = ENV.select{|k,v| k.start_with? 'HUBOT' }
  env['NODE_PATH'] = '/home/pi/watering-pi'
  env['PATH'] = "/home/pi/.nodenv/shims:#{ENV['PATH']}"
  w.name = "watering-pi"
  w.start = "/home/pi/watering-pi/bin/hubot -a slack -n wpi"
  w.dir = "/home/pi/watering-pi"
  w.log = "/home/pi/watering-pi/hubot.log"
  w.env = env
  w.uid = 'pi'
  w.gid = 'gpio'
  w.keepalive
end

