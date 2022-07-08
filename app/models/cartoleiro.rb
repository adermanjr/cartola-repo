class Cartoleiro < ApplicationRecord
    has_many :pontuacaos
    has_many :rodadas, through: :pontuacaos
end
