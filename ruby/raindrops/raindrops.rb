=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops

    def self.convert(num)

        value = ""

        if num % 3 == 0
            value += "Pling"
        end
        if num % 5 == 0 
            value += "Plang"
        end
        if num % 7 == 0
            value += "Plong"
        end
        if value == ""
            value = num.to_s
        end

        return value
    end

end