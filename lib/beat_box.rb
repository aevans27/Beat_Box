class BeatBox
    attr_reader :list
    def initialize
        @list = LinkedList.new
    end

    def append(value)
        value_list = value.split
        value_list.each do |parsed|
            @list.append(parsed)
        end
    end

    def count
        @list.count
    end
end