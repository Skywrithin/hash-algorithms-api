class Operation < ActiveRecord::Base
    has_many :join_algorithms_operations
    has_many :algorithms, :through => :join_algorithms_operations

    
end