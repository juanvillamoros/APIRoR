class Inmueble < ApplicationRecord
    validates :name,  presence: true
    validates :type_inmueble,  presence: true
    validates :street, presence: true
    validates :external_number, presence: true
    validates :internal_number, presence: true
    validates :neighborhood, presence: true
    validates :city, presence: true
    validates :country, presence: true
    validates :rooms, presence: true
    validates :bathrooms, presence: true
    validates :comments, presence: false
end
