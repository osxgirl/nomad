class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
      create_table :coaches do |t|
          t.string :name
          t.string :timezone
          t.string :weekday
          t.string :available
     end
  end
end
