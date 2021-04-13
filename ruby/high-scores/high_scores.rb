=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores

    attr_reader :scores

    def intialize(input_list)
        @scores = input_list
    end

    def latest
        return @scores[-1]
    end

    def personal_best
        return @scores.sort[-1]
    end

    def personal_top_three
        if @scores.length >= 3
            return @scores.sort.reverse[0..2]
        else
            return @scores.sort.reverse    
        end
    end

    def latest_is_personal_best?
        return (@scores[-1] == @scores.sort[-1])
    
    end


end