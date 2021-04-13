=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end

class RunLengthEncoding
    def self.encode(string)

        return string if string.empty?

        result = ""
        letters = string.chars
        current = letters[0]
        counter = 1
        
        letters[1..-1].each do |letter|
            if letter == current
                counter += 1
            else
                if counter == 1
                    result << current
                else
                    result << counter.to_s + current
                end
                current = letter
                counter = 1
            end
        end

        if counter == 1
            result << current
        else
            result << counter.to_s + current
        end

        return result

    end

    def self.decode(string)

        return string if string.empty?

        result = ""

        letters = string.chars
        index = 0

        while index < string.length
            if letters[index] =~ /[0-9]/
                number = letters[index].to_i
                if letters[index+1] =~ /[0-9]/
                    number *= 10
                    number += letters[index+1].to_i
                    index +=1
                end
                (1..number).each do |i|
                    result << letters[index+1]
                end
                index +=2
                
            else
                result << letters[index]
                index += 1
                
            end
        end

        return result

    end

end