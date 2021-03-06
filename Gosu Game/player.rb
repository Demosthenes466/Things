require_relative "star"
require_relative "bomb"
require "gosu"

class Player
	attr_reader :score

	def initialize
		@image = Gosu::Image.new("starfighter.png")
		@beep = Gosu::Sample.new("beep.wav")
		@explosion = Gosu::Sample.new("wilhelm.wav")
		@x = @y = @vel_x = @vel_y = @angle = 0.0
		@score = 0
	end

	def warp(x,y)
		@x, @y = x,y
	end

	def turn_left
		@angle -= 4.5
	end

	def turn_right
		@angle += 4.5
	end

	def accelerate
		@vel_x += Gosu::offset_x(@angle,0.5)
		@vel_y += Gosu::offset_y(@angle,0.5)
	end

	def move
		@x += @vel_x
		@y += @vel_y
		@x %= 640
		@y %= 480

		@vel_x *= 0.95
		@vel_y *= 0.95
	end

	def draw
		@image.draw_rot(@x, @y, 1, @angle)
	end

	def score
		@score
	end

	def collect_stars(stars)
		if stars.reject! {|star| Gosu::distance(@x, @y, star.x, star.y) < 35 } then
			@score += 1
			@beep.play
		else
			false
		end
	end

	def score
		@score
	end

	def collides(bombs)
		if bombs.reject! {|bomb| Gosu::distance(@x, @y, bomb.x, bomb.y) < 50 } then
			@score -= 10
			@explosion.play
			true
		else
			false
		end
	end

end