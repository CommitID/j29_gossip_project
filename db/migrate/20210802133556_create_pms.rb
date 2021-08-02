class CreatePms < ActiveRecord::Migration[5.2]
  def change
    create_table :pms do |t|
      t.text :content
      t.belongs_to :user, index:true

      t.timestamps
    end
  end
end
