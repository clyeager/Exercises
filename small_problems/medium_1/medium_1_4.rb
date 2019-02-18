def round_one(n)
  lights = {}
  1.upto(n) do |num|
    lights[num] = true
  end
  lights
end

def toggle(n, lights)
  2.upto(n) do |num|
    lights.each do |k, v|
      if k % num == 0
        lights[k] = !v
      end
    end
  end
  lights
end

def show_lights_on(n)
  all_lights_on = round_one(n)
  toggle_lights = toggle(n, all_lights_on)
  lights_on = []
  
  toggle_lights.each do |k, v|
    lights_on << k if v == true
  end
  lights_on
end

p show_lights_on(5)
p show_lights_on(1000)


