class CreateCartoleiros < ActiveRecord::Migration[7.0]
  def change
    create_table :cartoleiros do |t|
      t.string :time
      t.string :nome
      t.boolean :camisa

      t.timestamps
    end
  end
end
