class AddUserRefToTwitters < ActiveRecord::Migration[5.2]
  def change
    add_reference :twitters, :user, foreign_key: true
  end
end
