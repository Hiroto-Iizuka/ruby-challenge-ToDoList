class Task
  attr_reader :id, :title, :content

  def id
    @@count += 1
  end

  @@count = 0

  def initialize(title:, content:)
    @id = id
    @title = title
    @content = content
  end

  def info
    "[No.#{@id}] #{@title}:#{@content}"
  end
end

class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    puts "【追加】#{task.info}"
    @tasks.push(task)
  end
  
  #詰まっている箇所
  def info
    puts <<~EOS
    *=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*
    #{@tasks[1][id]}
    *=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*
    EOS
    
  end
end


task1 = Task.new(title: "洗濯", content: "8時までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買物", content: "卵,ネギ")

todo = ToDo.new
todo.add(task1)
todo.add(task2)
todo.info