class Room < ApplicationRecord
  belongs_to :north, class_name: 'Room', optional: true
  belongs_to :east, class_name: 'Room', optional: true
  belongs_to :south, class_name: 'Room', optional: true
  belongs_to :west, class_name: 'Room', optional: true
  has_many :rooms 
end

# rails g resource Room north:references east:references south:references west:references description contains_grid:boolean name