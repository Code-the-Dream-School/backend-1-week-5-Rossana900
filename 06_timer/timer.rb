class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end  
  def time_string
    "#{format('%02d', @seconds/3600)}:#{format('%02d', @seconds/60%60)}:#{format('%02d', @seconds%60)}"  

  end  
end
