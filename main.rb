class Task
  attr_reader :id, :title, :content

  @@count = 0

  def initialize(title:, content:)
    @id = @@count += 1
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

  # 詰まっている箇所
  def delete(task: )
    task = task[i].info
    puts task.info
    #if task == @tasks.find([@id])
    #puts "【削除】#{task.info}"
    #  @tasks.delete(@id)
    #else
     # puts "【！】該当idのタスクはありません。"
    #end
    
  end
end


task1 = Task.new(title: "洗濯", content: "8時までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買物", content: "卵,ネギ")

todo = ToDo.new
todo.add(task1)
todo.add(task2)
todo.info
todo.delete(id: 1)
todo.add(task3)
todo.delete(id: 4)
todo.delete(id: 3)
todo.info