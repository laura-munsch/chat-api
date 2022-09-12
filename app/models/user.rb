class User < ApplicationRecord
  validates :name, :firstname, :phone, presence: true
  validates :phone, 
    uniqueness: { 
      message: 'Un compte avec ce numéro de téléphone existe déjà.'
    },
    numericality: { 
      only_integer: true,
      greater_than: 100000000,
      less_than: 999999999,
      message: 'Le format du numéro de téléphone n\'est pas accepté.'
    }
end
