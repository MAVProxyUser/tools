#这里收集railsconsole的常用指令
Record.where(created_at: Time.parse("12pm")..Time.parse("4:30pm"))
Record.where(created_at: Date.new(2016, 11, 9)..Date.new(2016, 12, 9))
##时间相关的指令
Time.now.to_i
Time.at Time.now.to_i
