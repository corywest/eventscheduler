class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :body
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
