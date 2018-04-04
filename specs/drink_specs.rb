require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test
    
    def setup()
        
        @pub = Pub.new("Fanny by Gaslight", 100)

    end
    
end