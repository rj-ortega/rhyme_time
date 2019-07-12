class AnalyticService

    def self.average_number_of_poems
        number_of_poems = Poem.count.to_f
        (number_of_poems/number_of_users.to_f).to_f
    end

    def self.number_of_users
        User.count
    end

    def self.last_poem_created
        Poem.last.poem
    end

    def self.number_of_char_per_poem
        char_count = 0
        counter = 0
        Poem.all.each do |p|
            char_count += p.poem.length
            counter += 1
        end
        char_count.to_f / counter.to_f
    end

end
