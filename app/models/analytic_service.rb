class AnalyticService
    #done
    def self.average_number_of_poems
        number_of_poems = Poem.count.to_f
        (number_of_poems/number_of_users.to_f).to_f
    end

    #done
    def self.number_of_users
        User.count
    end

    #done
    def self.last_poem_created
        Poem.last
    end

    def self.number_of_char_per_poem
        char_count = 0
        counter = 0
        Poem.all.each do |p|
            char_count += p.poem.length
            counter += 1
        end
        (char_count.to_f / counter.to_f).to_i
    end

    def self.number_of_poems
        Poem.count
    end
end
