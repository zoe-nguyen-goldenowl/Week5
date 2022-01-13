class App < ApplicationRecord
    validates :name, length: { maximum: 14 }
end
