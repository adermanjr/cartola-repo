class Rodada < ApplicationRecord
  has_many :pontuacaos
  has_many :cartoleiros, through: :pontuacaos
end
