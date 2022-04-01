class Algorithm < ActiveRecord::Base
    has_many :messages

    has_many :join_algorithms_constants
        has_many :constants, :through => :join_algorithms_constants

    has_many :join_algorithms_operations
        has_many :operations, :through => :join_algorithms_operations

end