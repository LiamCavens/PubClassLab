require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < MiniTest::Test
    
    def setup()

        @drink1 = Drink.new("Lager", 1.00, 10)
        @drink2 = Drink.new("Wine", 5.00, 30)
        @drink3 = Drink.new("Gin", 3.00, 15)
        drink = [@drink1, @drink2, @drink3]
        @pub = Pub.new("Fanny by Gaslight", 100, drink)
        @customer1 = Customer.new("Donald", 50, 71)
        @customer2 = Customer.new("Oor Wullie", 5, 11)
    
    end

    def test_get_pub_name()
        assert_equal("Fanny by Gaslight", @pub.name)
    end

    def test_get_till_amount()
        assert_equal(100, @pub.till)
    end

    def test_pub_opens_with_3_drinks()
        assert_equal(3, @pub.drink_count())
    end

    def test_pub_gives_drink()
        @pub.give_drink(@customer1)
        assert_equal(2, @pub.drink_count())
    end

    def test_add_money_to_till_from_drink()
        assert_equal(103.00, @pub.add_to_till(@drink3))
    end

    def test_customer_underage()
        assert_equal("No Service", @pub.give_drink(@customer2))
    end

    def test_deny_customer_too_drunk() 
        @customer1.take_drink(@drink2)
        @customer1.take_drink(@drink2)
        @customer1.take_drink(@drink2)  
        assert_equal("No Service", @pub.give_drink(@customer1))
    end
    
end