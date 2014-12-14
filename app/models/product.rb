class Product < ActiveRecord::Base
    belongs_to :category

    validates :name, :price, :category, presence: true
end
