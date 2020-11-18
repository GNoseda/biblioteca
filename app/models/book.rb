class Book < ApplicationRecord
        enum status: [:lended, :in_storage]
end
