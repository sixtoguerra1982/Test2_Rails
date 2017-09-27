class CreateTasks < ActiveRecord::Migration[5.1]
  def change
	    create_table :tasks do |t|
	    t.references :user, foreign_key: true, null: false, default: ""
	    t.references :historie, foreign_key:true, null: false, default: ""
		t.boolean :state, default:false
		t.timestamps
	end
  end
end
