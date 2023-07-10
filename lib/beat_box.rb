class BeatBox
    attr_reader :list
    def initialize(beat = nil)
        @list = LinkedList.new
        if beat != nil
            append(beat)
        end
    end

    def append(value)
        #Removes special characters
        #Certain characters can't be played
        string_value = value.to_s
        clean_string = string_value.gsub(/[^0-9A-Za-z]/, ' ')
        value_list = clean_string.split
        value_list.each do |parsed|
            @list.append(parsed)
        end
    end

    def prepend(value)
        string_value = value.to_s
        clean_string = string_value.gsub(/[^0-9A-Za-z]/, ' ')
        value_list = clean_string.split
        value_list.each do |parsed|
            @list.prepend(parsed)
        end
    end

    def all
        @list.to_string
    end

    def count
        @list.count
    end

    def play
        beat = @list.to_string
        system("say -r 100 -v Boing #{beat}")
    end
end
