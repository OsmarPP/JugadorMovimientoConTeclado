require 'gosu'
 
class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Mi primer juego"
    @player = Player.new(self)
  end
 
  def draw
    @player.draw
  end
 
  def update
    if Gosu::button_down? Gosu::KbLeft or Gosu::button_down? Gosu::GpLeft then
      @player.move_left
    end
    if Gosu::button_down? Gosu::KbRight or Gosu::button_down? Gosu::GpRight then
      @player.move_right
    end
    if Gosu::button_down? Gosu::KbUp or Gosu::button_down? Gosu::GpButton0 then
      @player.move_up
    end
    if Gosu::button_down? Gosu::KbDown or Gosu::button_down? Gosu::GpButton0 then
      @player.move_down
    end
  end
 
end
 
class Player
  def initialize(window)
     @x = 300
     @y = 200
    @image = Gosu::Image.new(window, "zelda.png", true)
  end
  def draw()
    @image.draw(@x, @y, 0)
  end
  def move_right()
    @x = @x + 1
  end
  def move_left()
    @x = @x - 1
  end
  def move_down()
    @y = @y + 1
  end
  def move_up()
    @y = @y - 1
  end
 
end
 
window = GameWindow.new
window.show