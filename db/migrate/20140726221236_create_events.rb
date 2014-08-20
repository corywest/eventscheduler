class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :body
      t.string :start_time
      t.string :end_time
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
