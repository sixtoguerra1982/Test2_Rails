class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
	  t.string :titulo
	  t.text :description
	  t.string :url
      t.timestamps
    end
  end
end
