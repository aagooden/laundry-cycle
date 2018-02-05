def stain_treat()
  sample :ambi_glass_rub
end

def dirty?()
  result = [true, false].sample
  print result
  result
end

def wearing_clothes(smell)
  
  sample(:drum_cymbal_hard, rate:smell)
  print "sample was our wear from function"
  sleep(2)
end

def wash_clothes(temperature, sleep)
  #washing the clothes
  play(temperature)
  sleep(sleep)
  print"washing the clothes from function"
end

def dry_clothes(dryness)
  #dry the clothes
  dryness
  sleep(2)
end

3.times do
  wearing_clothes(50)
  
  if dirty?()
    stain_treat()
  end
  
  temperature = 60
  wash_clothes(temperature, 2)
  
  dry_clothes(sample :elec_beep)
end


