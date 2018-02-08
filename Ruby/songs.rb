

def harry_potter(speed)
  tune = [[60,0.5], [65, 0.75], [68,0.25], [67, 0.5], [65,1], [72,0.5],[70,1.25],[67, 1.5],
          [65, 0.75], [68,0.25], [67, 0.5], [64,1],[68, 0.5], [60,1],
          [60,0.5], [65, 0.75], [68,0.25], [67, 0.5], [65,1], [72, 0.5], [75, 1], [74, 0.5], [73, 1],
          [68, 0.5], [72, 1], [70, 0.5], [65, 1], [68,0.5], [65,1]]
  
  tune.length.times do |x|
    pitch = tune[x][0]
    time = (tune[x][1]) * speed
    volume = volume_control()
    synth :pretty_bell, note: pitch, release: time + 0.75, attack: 0.25, amp: volume
    sleep time
  end
end

def jeopardy(speed)
  tune = [[65, 1], [70, 1], [65,1], [58, 1], [65,1], [70,1],[65,2],
          [65, 1], [70, 1], [65,1], [70, 1], [74,1.5], [72, 0.5], [70, 0.5], [69, 0.5], [67, 0.5], [66, 0.5],
          [65, 1], [70, 1], [65,1], [58, 1], [65,1], [70,1],[65,2],
          [70, 1.5], [67,0.5], [65, 1], [63, 1], [62, 1], [60, 1], [58,1]]
  x = 0
  while x < tune.length
    pitch = tune[x][0]
    time = tune[x][1] * speed
    volume = volume_control()
    synth :piano, note: pitch, amp: volume, release: time + 1
    synth :hollow, note: pitch, amp: volume, release: time + 0.5
    sleep time
    x = x + 1
  end
end

def volume_control()
  knob, amount = get "/midi/nanokontrol_slider_knob/0/1/control_change"
  if knob == 14 || knob == 15
    volume = (amount + 5) / 5
  else
    volume = 1
    return volume
  end
end




loop do
  button = 0
  live_loop :midi do
    button, active = sync "/midi/nanokontrol_slider_knob/0/1/control_change"
    if button == 23
      harry_potter(0.9)
    elsif button == 24
      jeopardy(0.4)
    end
  end
  sleep 0.25
end
