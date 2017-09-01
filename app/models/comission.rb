class Comission < ApplicationRecord
  belongs_to :inscription
  belongs_to :user
  enum status: [:pending, :payd]
end
