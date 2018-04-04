class Customer

    attr_reader :name
    attr_accessor :wallet

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
        @drinkincustomer = []
    end

    def get_loan()
        return "I started of with a modest loan of $1,000,000"
    end

    def drink_in_customer_count()
        return @drinkincustomer.count()
    end

    def take_drink(pub)
        drink = pub.give_drink()
        @drinkincustomer.push(drink)
    end

    def get_price_of_drink()
        return @drink.price
    end
end

  # def give_money_for_lager()
    #     return @wallet -= 
    # end

