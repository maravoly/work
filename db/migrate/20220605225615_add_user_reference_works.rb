class AddUserReferenceWorks < ActiveRecord::Migration[6.1]
  def change
    add_reference :works, :user, null: false, foreign_key: true
  end
end
