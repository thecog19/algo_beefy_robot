require 'robot'

class BeefyRobotSimulator

  def initalize(file)
    @file = file
    @robot = ""
    @game_ongoing = true
    @instructions = []
  end


  def game_loop
    open_file
    until @instructions.empty
      read_instruction
    end
    print "program done"
    
  end

  def open_file
    File.readlines(@file).each do |line|
      @instructions.push(line)
    end
  end

  def read_instructions
  end

  def place_robot
    conditons = starting_conditions.split(",")
    @robot = new Robot(conditons[0].to_i, conditons[1].to_i, conditons[2])
  end

  def render_board
    robot_coords = @robot.get_pos
    clear_board
    @board[robot_coords[0], robot_coords[1]] = "X"
    @board.each do |row|
      puts row
    end
  end
end






