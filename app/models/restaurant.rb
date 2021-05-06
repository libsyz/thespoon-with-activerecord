class Restaurant < ApplicationRecord
   serialize :categories, Array

   has_many :reviews
   has_many :users, through: :reviews
end
