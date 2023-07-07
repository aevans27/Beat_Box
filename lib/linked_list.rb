class LinkedList
    attr_reader :head
    def initialize
        @head = nil
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
    end

    
    def to_string
        new_string = "#{@head.data}"
        current_node = @head
        while current_node.next != nil
            current_node = current_node.next
            new_string.concat(" #{current_node.data}")
        end
        new_string
    end

    def count
        count = 0
        if @head
            current_node = @head
            while current_node != nil
                current_node = current_node.next
                count += 1
            end
        end
        count
    end

    def prepend(node)
        if @head
            new_head = Node.new(node)
            new_head.next = @head
            @head = new_head
        else
            @head = Node.new(node)
        end
    end
end