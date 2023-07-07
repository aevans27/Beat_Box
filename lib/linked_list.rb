class LinkedList
    attr_reader :head, :count
    def initialize
        @head = nil
        @count = 0
    end

    def append(node)
        if @head
            current_node = @head
            new_node = Node.new(node)
            while current_node.next != nil
                current_node = current_node.next
            end
            current_node.next = new_node
        else
            @head = Node.new(node)
        end
        @count += 1
    end

    
    def to_string
        puts "got to new string"
        new_string = "#{@head.data}"
        current_node = @head
        while current_node.next != nil
            current_node = current_node.next
            new_string.concat(" #{current_node.data}")
        end
        new_string
    end
end