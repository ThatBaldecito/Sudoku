require 'gosu'

class Window < Gosu::Window
  def initialize
    super 475,475,false
    self.caption="Sudoku"
    $board=[[$A1,$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9],[$B1,$B2,$B3,$B4,$B6,$B7,$B8,$B9],[$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9]]
    $Square=Gosu::Image.new(self,"CuadradoSudoku.png",475,475,true)
  end
  def draw
  $Square.draw(0,0,0)
  end
end

class Random
  def initialize
    $A1=1+rand(4)
    $lista1=[1,2,3,4,5,6,7,8,9]
    $lista2=[1,2,3,4,5,6,7,8,9]
    $lista3=[1,2,3,4,5,6,7,8,9]
    $lista4=[1,2,3,4,5,6,7,8,9] 
    $lista5=[1,2,3,4,5,6,7,8,9] 
    $lista6=[1,2,3,4,5,6,7,8,9] 
    $lista7=[1,2,3,4,5,6,7,8,9] 
    $lista8=[1,2,3,4,5,6,7,8,9] 
    $lista9=[1,2,3,4,5,6,7,8,9]
  end
    $lista1=[1,2,3,4,5,6,7,8,9].shuffle!
    $lista2=[1,2,3,4,5,6,7,8,9].shuffle!
    $lista3=[1,2,3,4,5,6,7,8,9].shuffle!
    $lista4=[1,2,3,4,5,6,7,8,9].shuffle!
    $lista5=[1,2,3,4,5,6,7,8,9].shuffle!
    $lista6=[1,2,3,4,5,6,7,8,9].shuffle!
    $lista7=[1,2,3,4,5,6,7,8,9].shuffle!
    $lista8=[1,2,3,4,5,6,7,8,9].shuffle!
    $lista9=[1,2,3,4,5,6,7,8,9].shuffle!
  def randomizer
    $board
    if $A1==1||$A1==2 then
      $A1.pop   
      case $A1 
        when 1
          $A1=Gosu::Image.new(self,"1.png",45,45,true)
        when 2
          $A1=Gosu::Image.new(self,"2.png",45,45,true)
        when 3
          $A1=Gosu::Image.new(self,"3.png",45,45,true)
        when 4
          $A1=Gosu::Image.new(self,"4.png",45,45,true)
        when 5
          $A1=Gosu::Image.new(self,"5.png",45,45,true)
        when 6
          $A1=Gosu::Image.new(self,"6.png",45,45,true)
        when 7
          $A1=Gosu::Image.new(self,"7.png",45,45,true)
        when 8
          $A1=Gosu::Image.new(self,"8.png",45,45,true)
        when 9
          $A1=Gosu::Image.new(self,"9.png",45,45,true)
      end
    end
  end
  if $A1==3 then
    $A1=Gosu::Image.new(self,"blank.png",45,45,true)
  end
  def IsInColumn(number,column)
    $number=number
    $board[culumn].each do |i|
      if i==$number then
        $number=true   
      end
      if i==board[row].length && $number==true
        $number=false
      end
    end
    return $number
  end
end
window=Window.new
window.show

