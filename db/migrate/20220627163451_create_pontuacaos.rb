class CreatePontuacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :pontuacaos do |t|
      t.integer :cartoleiro_id
      t.integer :rodada_id
      t.float :pontos
      t.integer :posicao

      t.timestamps
    end
  end
end
