class Log < ApplicationRecord
  has_many :user_logs
  belongs_to :machine
end
  