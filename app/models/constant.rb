class Constant < ActiveRecord::Base
    has_many :join_algorithms_constants
    has_many :algorithms, :through => :join_algorithms_constants
end