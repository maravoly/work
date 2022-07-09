class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.integer :chapter_number
      t.string :title
      t.text :summary
      t.references :work, null: false, foreign_key: true

      t.timestamps
    end
  end
end
