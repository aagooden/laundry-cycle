live_loop :midi do
  button, parameter = sync "/midi/nanokontrol_slider_knob/0/1/control_change"
  if button == 45
    harry_potter
  end
end

def harry_potter
  tune = [[60,0.5], [65, 0.75], [68,0.25], [67, 0.5], [65,1], [72,0.5],[70,1.25],[67, 1.5],
          [65, 0.75], [68,0.25], [67, 0.5], [64,1],[68, 0.5], [60,1],
          [60,0.5], [65, 0.75], [68,0.25], [67, 0.5], [65,1], [72, 1], [75, 0.5], [74, 0.5], [73, 0.5],
          [68, 1], [72, 1], [70, 1], [65, 1], [68,1], [65,1]]
  
  tune.length.times do |x|
    speed = parameter / 127
    pitch = tune[x][0]
    time = (tune[x][1]) * speed
    synth :pretty_bell, note: pitch, amp: 30, release: time
    sleep time
  end
end

def jeopardy()
  tune = [[65, 1], [70, 1], [65,1], [58, 1], [65,1], [70,1],[65,2],
          [65, 1], [70, 1], [65,1]]
  x = 0
  while x < tune.length
    pitch = tune[x][0]
    time = tune[x][1]
    synth :hollow, note: pitch, amp: 30, release: time
    sleep time
    x = x + 1
  end
end