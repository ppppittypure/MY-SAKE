class CreateRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :rankings do |t|
      
      t.string :title,   null:false
      t.text   :text,    null:false
      t.float :evaluation,null:false
      t.text :image,     null:false
      t.references :user,null:false,foreign_key: true

      t.timestamps
    end
  end
end
