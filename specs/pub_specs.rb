require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < MiniTest::Test
    
    def setup()

        @pub = Pub.new("Fanny by Gaslight", 100)
    
    end

    def test_get_pub_name()
        assert_equal("Fanny by Gaslight", @pub.name)
    end

    def test_get_till_amount()
        assert_equal(100, @pub.till)
    end

end