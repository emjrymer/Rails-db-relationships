class Dog < ApplicationRecord
  belongs_to :owner
  validates :name, presence: true
end
