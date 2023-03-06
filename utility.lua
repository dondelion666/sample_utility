function init()
  
  softcut.enable(1,1)
  softcut.buffer(1,1)
  softcut.position(1,1)
  softcut.rate(1,1)
  softcut.rec_level(1,1)
  softcut.pre_level(1,0)
  softcut.level_input_cut(1,1,1)
  softcut.rec(1,1) 
  softcut.level(1,1)
  softcut.play(1,1)

  --5mins recording then loop
  softcut.loop(1,1)
  softcut.loop_start(1,1)
  softcut.loop_end(1,300)
  
end

params:add_file("file"_path.audio)
params:set_action("file",function(x) buffer_read_stereo(x,0,1,-1,0,1) end)

params:add_control("start","start",controlspec.new(0,300,'lin',0.01,0,'s',0.01))
params:set_action("start",function(x) softcut.loop_start(x) end)
params:add_control("end","end",controlspec.new(0,300,'lin',0.01,0,'s',0.01))
params:set_action("end",function(x) softcut.loop_end(x) end)

params:bang()
