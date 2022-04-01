class JoinAlgorithmsOperation < ActiveRecord::Base
    belongs_to :algorithm
    belongs_to :operation
end