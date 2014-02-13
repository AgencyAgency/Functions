def setup
  size 800, 800
  @degrees = 0
end

def draw
  background 0
  translate width/2.0, height/2.0

  radius = 50
  t = Math::PI*2.0/360.0 * @degrees
  circle radius, t
  @degrees -= 1
end

def circle r, theta
  x = x_from_polar(r, theta)
  y = y_from_polar(r, theta)
  ellipse x, y, circle_diameter, circle_diameter
end

def circle_diameter
  max(10, mouse_x)
end

def x_from_polar(r, theta)
  return r * Math.cos(theta)
end

def y_from_polar(r, theta)
  return r * Math.sin(theta)
end