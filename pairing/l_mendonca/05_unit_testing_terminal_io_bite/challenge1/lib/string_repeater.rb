class StringRepeater
    def initialize(terminal)
        @terminal = terminal
    end

    def run
        @terminal.puts "Hello. I will repeat a string many times."
        @terminal.puts "Please enter a string"
        string = @terminal.gets.chomp
        @terminal.puts "Please enter a number of repeats"
        number = @terminal.gets.chomp.to_i
        return string * number
    end
end


# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX



# # original:

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# # Hello. I will repeat a string many times.
# # Please enter a string
# # TWIX
# # Please enter a number of repeats
# # 10
# # Here is your result:
# # TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX