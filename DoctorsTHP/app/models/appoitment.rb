class Appoitment < ApplicationRecord
#Un RDV à un patient et un docteur
	belongs_to :doctor
    belongs_to :patient
end
