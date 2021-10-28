class CreatePhotoshoots < ActiveRecord::Migration[6.1]
  def change
    create_table :photoshoots do |t|
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
