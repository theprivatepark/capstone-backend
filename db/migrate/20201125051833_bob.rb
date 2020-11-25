class Bob < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :time, :text
  end
end
