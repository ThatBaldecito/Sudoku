require 'gosu'



class Random
  def initialize
    $board=[[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9]]
    $imagenes=[[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9]]
    $o=0
    $p=0
    $m=0
    $e=0
    $i=0
    $x=0
    $v=10
    $b=10
    for $o in 0..8
      for $p in 0..8
        $board[$o][$p]=1+rand(3)
      end
    end
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
    p "hola"
      for $e in 0..8
        for $i in 0..8
          if $board[$e][$i]==1||$board[$e][$i]==2 then
            case $e
              when 0
                $board[$e][$i]=$lista1.pop.times{9}
              when 1
                $board[$e][$i]=$lista2.pop.times{9}
              when 2
                $board[$e][$i]=$lista3.pop.times{9}
              when 3
                $board[$e][$i]=$lista4.pop.times{9}
              when 4
                $board[$e][$i]=$lista5.pop.times{9}
              when 5
                $board[$e][$i]=$lista6.pop.times{9}
              when 6
                $board[$e][$i]=$lista7.pop.times{9}
              when 7
                $board[$e][$i]=$lista8.pop.times{9}
              when 8
                $board[$e][$i]=$lista9.pop.times{9}
            end
            case $i
              when 0
                $imagenes[$e][$i]=Gosu::Image.new(self,"1.png",45,45,true)
              when 1
                $imagenes[$e][$i]=Gosu::Image.new(self,"2.png",45,45,true)
              when 2
                $imagenes[$e][$i]=Gosu::Image.new(self,"3.png",45,45,true)
              when 3
                $imagenes[$e][$i]=Gosu::Image.new(self,"4.png",45,45,true)
              when 4
                $imagenes[$e][$i]=Gosu::Image.new(self,"5.png",45,45,true)
              when 5
                $imagenes[$e][$i]=Gosu::Image.new(self,"6.png",45,45,true)
              when 6
                $imagenes[$e][$i]=Gosu::Image.new(self,"7.png",45,45,true)
              when 7
                $imagenes[$e][$i]=Gosu::Image.new(self,"8.png",45,45,true)
              when 8
                $imagenes[$e][$i]=Gosu::Image.new(self,"9.png",45,45,true)
            end
          end
        end
      end  
  end
  def isInCorR(cNumber,rNumber,column,row)
    $cNumber=cNumber
    $rNumber=rNumber
    $column=column
    $row=row
    $board[$culumn].each do |i|
      if i==$cNumber then
        $cNumber=true   
      end     
    end
    $board[0][$row].each do |i|
      if i==$rNumber then
        $rNumber=true
      end
    end
  end
  
  def isInSquare(square)
    $square=square
    case $square
      when 0
        case $m
          when $board[0][0]
            $m=true
          when $board[0][1]
            $m=true
          when $board[0][2]
            $m=true
          when $board[1][0]
            $m=true
          when $board[1][1]
            $m=true
          when $board[1][2]
            $m=true
          when $board[2][0]
            $m=true
          when $board[2][1]
            $m=true
          when $board[2][2]
            $m=true
          else
            $m=false
      end
      when 1
        case $m
          when $board[0][3]
            $m=true
          when $board[1][3]
            $m=true
          when $board[2][3]
            $m=true
          when $board[0][4]
            $m=true
          when $board[1][4]
            $m=true
          when $board[2][4]
            $m=true
          when $board[0][5]
            $m=true
          when $board[1][5]
            $m=true
          when $board[2][5]
            $m=true
          else
            $m=false
      end
      when 2
        case $m
          when $board[0][6]
            $m=true
          when $board[1][6]
            $m=true
          when $board[2][6]
            $m=true
          when $board[0][7]
            $m=true
          when $board[1][7]
            $m=true
          when $board[2][7]
            $m=true
          when $board[0][8]
            $m=true
          when $board[1][8]
            $m=true
          when $board[2][8]
            $m=true
          else
            $m=false
      end
      when 3
        case $m
          when $board[3][0]
            $m=true
          when $board[3][1]
            $m=true
          when $board[3][2]
            $m=true
          when $board[4][0]
            $m=true
          when $board[4][1]
            $m=true
          when $board[4][2]
            $m=true
          when $board[5][0]
            $m=true
          when $board[5][1]
            $m=true
          when $board[5][2]
            $m=true
          else
            $m=false
      end
      when 4
        case $m
          when $board[3][3]
            $m=true
          when $board[3][4]
            $m=true
          when $board[3][5]
            $m=true
          when $board[4][3]
            $m=true
          when $board[4][4]
            $m=true
          when $board[4][5]
            $m=true
          when $board[5][3]
            $m=true
          when $board[5][4]
            $m=true
          when $board[5][5]
            $m=true
          else
            $m=false
      end
      when 5
        case $m
          when $board[3][6]
            $m=true
          when $board[3][7]
            $m=true
          when $board[3][8]
            $m=true
          when $board[4][6]
            $m=true
          when $board[4][7]
            $m=true
          when $board[4][8]
            $m=true
          when $board[5][6]
            $m=true
          when $board[5][7]
            $m=true
          when $board[5][8]
            $m=true
          else
            $m=false
      end
      when 6
        case $m
          when $board[6][0]
            $m=true
          when $board[6][1]
            $m=true
          when $board[6][2]
            $m=true
          when $board[7][0]
            $m=true
          when $board[7][1]
            $m=true
          when $board[7][2]
            $m=true
          when $board[8][0]
            $m=true
          when $board[8][1]
            $m=true
          when $board[8][2]
            $m=true
          else
            $m=false
      end
      when 7
        case $m
          when $board[6][3]
            $m=true
        when $board[6][4]
          $m=true
        when $board[6][5]
          $m=true
        when $board[7][3]
          $m=true
        when $board[7][4]
          $m=true
        when $board[7][5]
          $m=true
        when $board[8][3]
          $m=true
        when $board[8][4]
          $m=true
        when $board[8][5]
          $m=true
        else
          $m=false
      end
      when 8
        case $m
          when $board[6][6]
            $m=true
          when $board[6][7]
            $m=true
          when $board[6][8]
            $m=true
          when $board[7][6]
            $m=true
          when $board[7][7]
            $m=true
            when $board[7][8]
            $m=true
          when $board[8][6]
            $m=true
          when $board[8][7]
            $m=true
          when $board[8][8]
            $m=true
          else
            $m=false
      end
    end
  end    
  def draw
    
  end
end


class Window < Gosu::Window
  def initialize
    super 475,475,false
    self.caption="Sudoku"
     $Square=Gosu::Image.new(self,"CuadradoSudoku.png",465,465,true)
    $f=0
    $g=0
  end
  def draw
    $Square.draw(0,0,0)
    for $f in 0..8
      for $g in 0..8
        p $imagenes
        $imagenes[$f][$g].draw($v,$b,1)
        if $v==410 then
          $v=10
          $b+=51
        end
        if $v>411 then
          $v+=51
        else
          $v+=45
        end
      end
    end
  end
end
random=Random.new
random.randomizer
window=Window.new
window.show