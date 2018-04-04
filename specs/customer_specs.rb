require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')

class CustomerTest < MiniTest::Test
    
    def setup()
        
        @customer = Customer.new("Donald", 50)
        @drink1 = Drink.new("Lager", 1.00)
        @drink2 = Drink.new("Wine", 5.00)
        @drink3 = Drink.new("Gin", 3.00)
        drinks = [@drink1, @drink2, @drink3]
        @pub = Pub.new("Fanny by Gaslight", 100, drinks)

    end
    
    def test_customer_has_name()
        assert_equal("Donald", @customer.name)
    end

    def test_customer_has_wallet()
        assert_equal(50, @customer.wallet)
    end

    def test_customer_gets_loan()
        assert_equal("I started of with a modest loan of $1,000,000", @customer.get_loan())
    end

    def test_customer_takes_drink__drink_count_is_1()
        @customer.take_drink(@pub)
        assert_equal(1, @customer.drink_in_customer_count())
    end



    def test_get_price_of_drink()
        @drink = Drink.new("Lager", 1.00)
        assert_equal(1.0, @drink.price)
    end
end

    #  def test_customer_gives_money()
    #     @customer.give_money()
    #     assert_equal(101, @customer.drink_count())
    # end
