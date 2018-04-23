# !/usr/bin/ruby

class Robotgame
  
  def initialize(inputX, inputY, inputFace)
    @x = inputX
    @y = inputY
    @face = inputFace
  	raise ArgumentError.new("Robot position is not valid") if !checkrobotposition(@x,@y)
  	raise ArgumentError.new("Robot face is not valid") if !checkrobotface(@face)
  end

  def checkrobotposition(x,y)
    cond = ( x>=0 and x<=4 and y>=0 and y<=4 )
    return cond
  end
  
  def checkrobotface(f)
    cond = ( f == "NORTH" or f == "SOUTH" or f == "EAST" or f == "WEST" )
    return cond
  end
  
  def play(input)
    for i in input do
      if i == "MOVE"
        temp_x = @x
        temp_y = @y
        if @face == "NORTH"
        	temp_y = temp_y + 1;
        elsif @face == "SOUTH"
        	temp_y = temp_y - 1;
        elsif @face == "EAST"
        	temp_x = temp_x + 1;
        elsif @face == "WEST"
        	temp_x = temp_x - 1;
        end
        if checkrobotposition(temp_x,temp_y)
          @x = temp_x
          @y = temp_y
        end
      elsif i =="LEFT"
        tempface = @face
      	if tempface == "NORTH"
        	@face = "WEST";
        elsif tempface == "SOUTH"
        	@face = "EAST";
        elsif tempface == "EAST"
        	@face = "NORTH";
        elsif tempface == "WEST"
        	@face = "SOUTH";
        end
      elsif i == "RIGHT"
        tempface = @face
      	if tempface == "NORTH"
        	@face = "EAST";
        elsif tempface == "SOUTH"
        	@face = "WEST";
        elsif tempface == "EAST"
        	@face = "SOUTH";
        elsif tempface == "WEST"
        	@face = "NORTH";
        end
      elsif i == "REPORT"
        return @x,@y,@face
      else
        raise ArgumentError.new("Invalid Option");
      end
    end
    rescue Exception => e  
       return e.message 
  end
  
end

