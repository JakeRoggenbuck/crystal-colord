module CrystalColord
  VERSION = "0.1.0"

  class RGB
	def initialize(red : Int32, green : Int32, blue : Int32)
	  @red = red
	  @green = green
	  @blue = blue
	end
	def validate_colors
	  red_valid = check_single_color(@r)
	  blue_valid = check_single_color(@r)
	  green_valid = check_single_color(@r)

	  if red_valid == blue_valid == green_valid == false
  		raise "Color value not correct"
	  end
	end
	def check_single_color(color : String)
	  if color >= 0 && color <= 255
		return true
	  else
		return false
	  end
	end
  end

  class HEX
	def initialize(hex : String)
	  @hex = hex
	end
  end

  class Colord
	def initialize(text : String, color : RGB | String)
	  @text = text
	  @original = text
	  @color = color

	  @endl = "\e[0m"

  	  if color.is_a? RGB
	  elsif color.is_a? HEX
	  elsif color[0] == '#'
	  end
	end
	def apply(num : Int32)
	  @text = "\e[#{num}m#{@text}" + @endl
	  return @text
	end
	def reset
	  @text = @original
	end
	def bold
	  apply(1)
	end
	def underline
	  apply(4)
	end
	def reverse
	  apply(7)
	end
	def black(background = false)
	  if background == false
		num = 30
	  else
		num = 40
	  end
	  apply(num)
	end
	def white(background = false)
	  if background == false
		num = 97
	  else
		num = 107
	  end
	  apply(num)
	end
	def red(background = false)
	  if background == false
		num = 31
	  else
		num = 41
	  end
	  apply(num)
	end
	def green(background = false)
	  if background == false
		num = 32
	  else
		num = 42
	  end
	  apply(num)
	end
	def yellow(background = false)
	  if background == false
		num = 33
	  else
		num = 43
	  end
	  apply(num)
	end
	def blue(background = false)
	  if background == false
		num = 34
	  else
		num = 44
	  end
	  apply(num)
	end
	def megenta(background = false)
	  if background == false
		num = 35
	  else
		num = 45
	  end
	  apply(num)
	end
	def cyan(background = false)
	  if background == false
		num = 36
	  else
		num = 46
	  end
	  apply(num)
	end
	def light_grey(background = false)
	  if background == false
		num = 37
	  else
		num = 47
	  end
	  apply(num)
	end
	def dark_grey(background = false)
	  if background == false
		num = 90
	  else
		num = 100
	  end
	  apply(num)
	end
	def bright_red(background = false)
	  if background == false
		num = 91
	  else
		num = 101
	  end
	  apply(num)
	end
	def bright_green(background = false)
	  if background == false
		num = 92
	  else
		num = 102
	  end
	  apply(num)
	end
	def bright_yellow(background = false)
	  if background == false
		num = 93
	  else
		num = 103
	  end
	  apply(num)
	end
	def bright_blue(background = false)
	  if background == false
		num = 94
	  else
		num = 104
	  end
	  apply(num)
	end
	def bright_magenta(background = false)
	  if background == false
		num = 95
	  else
		num = 105
	  end
	  apply(num)
	end
	def bright_cyan(background = false)
	  if background == false
		num = 96
	  else
		num = 106
	  end
	  apply(num)
	end
  end
end
