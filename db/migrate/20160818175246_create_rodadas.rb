class CreateRodadas < ActiveRecord::Migration[5.0]
  def change
    create_table :rodadas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
