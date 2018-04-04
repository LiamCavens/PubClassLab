require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < MiniTest::Test
    
    def setup()

        @drink1 = Drink.new("Lager", 1.00)
        @drink2 = Drink.new("Wine", 5.00)
        @drink3 = Drink.new("Gin", 3.00)
        drink = [@drink1, @drink2, @drink3]
        @pub = Pub.new("Fanny by Gaslight", 100, drink)
        @customer = Customer.new("Donald", 50, 71)
    
    end

    def test_get_pub_name()
        assert_equal("Fanny by Gaslight", @pub.name)
    end

    def test_get_till_amount()
        assert_equal(100, @pub.till)
    end

    # def test_pub_has_no_drinks()
    #     assert_equal(0, @pub.drink_count())
    # end

    def test_pub_opens_with_3_drinks()
        assert_equal(3, @pub.drink_count())
    end

    def test_pub_gives_drink()
        @pub.give_drink()
        assert_equal(2, @pub.drink_count())
    end

    def test_add_money_to_till_from_drink()
        assert_equal(103.00, @pub.add_to_till(@drink3))
    end
end