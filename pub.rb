class Pub

    attr_reader :name
    attr_accessor :till

    def initialize(name, till)
        @name = name
        @till = till
        @drinks = []
    end
end