class UserLog < ApplicationRecord
  belongs_to :user
  belongs_to :log
end
