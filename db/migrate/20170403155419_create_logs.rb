class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :video
      t.text :message

      t.timestamps
    end
  end
end
