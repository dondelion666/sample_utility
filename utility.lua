function init()
  
  audio.monitor_mono ()  
  audio.level_adc_cut(1)
  
  --RECORDING
 
  softcut.enable(1,1)
  softcut.buffer(1,1)
  
  --input only
  softcut.level(1,0)
  --no playback
  softcut.play(1,0)
  softcut.rec(1,1)
  --5mins recording then loop
  softcut.loop(1,1)
  softcut.loop_start(1,1)
  softcut.loop_end(1,300)
  
  softcut.position(1,1)
  softcut.rate(1,1)
  softcut.rec_level(1,0)
  softcut.pre_level(1,1)
  softcut.level_input_cut(1,1,1)
 
  
end

function key(n,z)
  
  if n==2 and z==1 then
    softcut.position(1,1)
    softcut.rec_level(1,1)
    audio.level_monitor(1)
  end
  
  if n==2 and z==0 then
    softcut.rec_level(1,0)
    audio.level_monitor(0)
  end
  
  if n==3 and z==1 then
    softcut.position(1,1)
    softcut.level(1,1)
  end
  
  if n==3 and z==0 then
    softcut.level(1,0)
  end
  
end
