class Owner < ApplicationRecord
  has_many :dogs, dependent: :destroy
  validates :name, presence: true,
                   length: { minimum: 5 }
  validates :profession, presence: true,
                         length: { minimum: 5 }
end
