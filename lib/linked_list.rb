class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end

    def append(value)
        if accept_beat?(value) == false
            return
        end
        if @head
            current_node = @head
            new_node = Node.new(value)
            while current_node.next != nil
                current_node = current_node.next
            end
            current_node.next = new_node
        else
            @head = Node.new(value)
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
        list_count = 0
        if @head
            current_node = @head
            while current_node != nil
                current_node = current_node.next
                list_count += 1
            end
        end
        list_count
    end

    def prepend(value)
        if accept_beat?(value) == false
            return
        end
        if @head
            new_head = Node.new(value)
            new_head.next = @head
            @head = new_head
        else
            @head = Node.new(value)
        end
    end

    def insert(value, location)
        if accept_beat?(value) == false
            return
        end
        if @head == nil
            append(value)
        elsif location == 0
            prepend(value)
        elsif location > count
            #If user tries to insert outside of range
            #Add to end
            append(value)
        else
            current_node = @head
            (location -1).times do
                current_node = current_node.next
            end
            new_node = Node.new(value)
            new_node.next = current_node.next
            current_node.next = new_node
        end
    end

    def find(location, range)
        new_string = ""
        if @head == nil
            return "No beats added"
        end
        if (location + range) > count
            return "Outside of range"
        end
        if location == 0
            new_string = "#{@head.data}"
        end
        list_count = 0
        current_node = @head
        while current_node.next != nil
            list_count += 1
            current_node = current_node.next
            if list_count >= location && list_count < (location + range)
                new_string.concat(" #{current_node.data}")
            end
        end
        new_string.strip
    end

    def includes?(value)
        does_include = false
        count = 0
        if @head
            current_node = @head
            while current_node != nil
                if value == current_node.data
                    does_include = true
                end
                current_node = current_node.next
                count += 1
            end
        end
        does_include
    end

    def pop
        lost_value = "Nothing to pop"
        if @head
            current_node = @head
            while current_node.next.next != nil
                current_node = current_node.next
            end
            lost_value = current_node.next.data
            current_node.next = nil
        end
        lost_value
    end

    def accept_beat?(value)
        accepted_beats = ["deep", "doo", "ditt", "woo", "hoo", "shu",
        "doop", "boop", "dop", "dep", "woop", "tee", "0", "1", "2",
        "3", "4", "5", "6", "7", "8", "9"]
        is_beat = accepted_beats.any? do |beat|
            beat == value
        end
    end
end