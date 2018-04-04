class Pub

    attr_reader :name, :drinks
    attr_accessor :till

    def initialize(name, till, drink)
        @name = name
        @till = till
        @drink = drink
    end

    def drink_count()
        return @drink.count()
    end

    def give_drink(customer)
        if customer.age >= 18 && customer.get_drunkenness_level <= 75
            customer.take_drink(@drink.shift())
        else
            return "No Service"
        end
    end

    def add_to_till(drink)
        return @till += drink.price
    end

end