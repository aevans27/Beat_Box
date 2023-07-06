class LinkedList
    attr_reader :head, :count
    def initialize
        @head = nil
        @count = 0
    end

    def append(node)
        @head = Node.new(node)
        @count += 1
    end
    
    def to_string
        @head.data
    end
end