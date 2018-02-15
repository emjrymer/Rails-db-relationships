class Owner < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 5 }
  validates :profession, presence: true,
                         length: { minimum: 5 }
end
