class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.timestamps

      t.integer :course_id
      t.integer :user_id
    end

    add_index :photos, [:user_id, :course_id]
    add_index :photos, :course_id
  end
end
