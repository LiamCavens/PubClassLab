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
        if customer.age >= 18
            customer.take_drink(@drink.shift())
        else
            return "Under Legal Drinking Age"
        end
    end

    def add_to_till(drink)
        return @till += drink.price
    end

    # def customer_old_enough_to_drink(customer)
    #     if customer.age >= 18
    #         give_drink()
    #     else
    #         return "Under Legal Drinking Age"
    #     end
    # end
end