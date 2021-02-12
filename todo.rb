require './task'
class ToDo < Task
  def initialize
    @tasks = []
  end

  def add(task)
    puts "【追加】#{task.info}"
    @tasks.push(task)
  end
  
  def info
    if @tasks == []
      puts "【！】タスクはありません。"
    else
      puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
      @tasks.each do |task|
      puts "#{task.info}"
      end
      puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
    end
  end

  def delete(id:)
    task = @tasks.find{|task| task.id == id }
    if task.nil?
      puts "【！】該当idのタスクはありません。"
    else
      @tasks.delete(task)
      puts "【削除】#{task.info}"
    end
  end
end