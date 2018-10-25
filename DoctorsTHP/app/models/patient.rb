class Patient < ApplicationRecord
#un Patient peut avoir plusieurs RDV et plusieurs docteurs à travers plusieurs RDV
	has_many :appointments
	has_many :doctors, through: :appointments
end
