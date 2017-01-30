class Robot
  def initialize(x,y,f)
    @x = x
    @y = y
    @f = f
    @dir = get_dir
    @positions = ["N", "E", "S", "W"]
    @index = 0
  end

  def get_dir
    if @positions = "N"
      @index = 0
      return [1,0]
    elsif @positions = "S"
      @index = 2
      return [-1,0]
    elsif @positions = "E"
      @index = 1
      return [0, 1]
    else 
      @index = 3
      return [0,-1]
    end
  end

  def get_pos
    return [@x, @y, @f]
  end

  def move
    @x += get_dir[0]
    @y += get_dir[1]
    if @x > 4
      @x = 4
    elsif @x < 0
      @x = 0
    end

    if @y > 4
      @y = 4
    elsif @y < 0
      @y = 0
    end

  end

  def rotate(lorR)
    if lorR == "R"
      @index += 1
    else
      @index -= 1
    end
    @dir = @positions[@index]
  end
end