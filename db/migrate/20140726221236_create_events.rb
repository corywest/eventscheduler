class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :body
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.date :end_date
      t.string :hash_tag

      t.timestamps
    end
  end
end
