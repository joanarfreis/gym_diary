class Machine < ApplicationRecord
  has_many :logs
  belongs_to :machine_category
end
