class CreateReadersAndWorks < ActiveRecord::Migration[6.1]
  def change
      create_table :reader_work, id: false do |t|
          t.belongs_to :reader
          t.belongs_to :work
      end
  end
end
