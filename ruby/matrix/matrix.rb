=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix

    attr_reader :rows, :columns

    def initialize(text)
        
        rows_s = text.split("\n")
        
        @rows = []
        rcount = 0
        rows_s.each do |row|

            num_string = row.split(' ')
            row_num = []
            num_string.each do |number|
                row_num << number.to_i
            end

            @rows[rcount] = row_num
            rcount += 1           
        
        end
        
        @columns = rows.transpose

    end

    

end