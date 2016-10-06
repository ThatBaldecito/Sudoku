require 'gosu'

class Window < Gosu::Window
  def initialize
    super 475,475,false
    self.caption="Sudoku"
    $Square=Gosu::Image.new(self,"CuadradoSudoku.png",475,475,true)
  end
  def draw
  $Square.draw(0,0,0)
  end
end

def randomizer
  rand(9)
end
 



window=Window.new
window.show
