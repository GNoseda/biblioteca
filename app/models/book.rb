class Book < ApplicationRecord
        validates :title, presence: true
        validates :author, presence: true
        validates :status, presence: true
        validates :lend_time, presence: true
        validates :return_time, presence: true
        validates :lend_to, presence: true

        enum status: [:Guardado, :Prestado]
end
