require_relative 'tsv_buddy'
require_relative 'yaml_buddy'

class Test
    include TsvBuddy
    include YamlBuddy
end

Tester = Test.new

for i in 1..5
    puts 'a'
end
 



