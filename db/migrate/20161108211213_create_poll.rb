class CreatePoll < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.string :title
      t.text :question

      t.timestamps
    end
  end
end
