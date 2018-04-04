class Customer

    attr_reader :name, :age
    attr_accessor :wallet

    def initialize(name, wallet, age)
        @name = name
        @wallet = wallet
        @drinkincustomer = []
        @age = age
    end

    def get_loan()
        return "I started of with a modest loan of $1,000,000"
    end

    def drink_in_customer_count()
        return @drinkincustomer.count()
    end

    def take_drink(drink)
        @drinkincustomer.push(drink)
    end

    def pay_for_drink(drink)
        if drink.price <= @wallet
            return @wallet -= drink.price
        end
    end
end

  

