class Room < ApplicationRecord
  belongs_to :north, class_name: 'Room', optional: true, dependent: :delete
  belongs_to :east, class_name: 'Room', optional: true, dependent: :delete
  belongs_to :south, class_name: 'Room', optional: true, dependent: :delete
  belongs_to :west, class_name: 'Room', optional: true, dependent: :delete
  belongs_to :area
end

# rails g resource Room north:references east:references south:references west:references name description