class PrintStatus
  def initialize(status)
    @status = status
  end

  def print_status
    if @status == 'marginal'
      puts '(*´ー`)旦 旦(￣ω￣*)'
      elif @status == 'wine'
      puts '( ˘▽˘)っ♨' 
      elif @status == 'sing'
      puts '(ˇ▽ˇ)ノ♪♬♫' 
      elif @status == 'sleep'
      puts '(￣ρ￣)..zzZZ' 
      elif @status == 'work'
      puts '(；￣Д￣)'
      elif @status == 'bar'
      puts 'ﾐ(o*･ω･)ﾉ'
      elif @status == 'behold'
      puts '(─‿‿─)'    
    else
      puts '?!'  
    end
  end
end
