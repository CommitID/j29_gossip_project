class CreateUserPms < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pms do |t|
      t.belongs_to :user, index:true
      t.belongs_to :pm, index:true

      t.timestamps
    end
  end
end
