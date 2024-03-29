require "to_do_list"
RSpec.describe TodoList do
    let(:todo) { TodoList.new }
    describe "#add" do
      it "adds a todo to the list" do
        expect(todo.add('grocery')).to eq(['grocery'])
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        todo.add('grocery')
        todo.remove('grocery')
        expect(todo.todos).to eq([])

      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        expect(todo.todos).to eq([])
      end
    end
  end