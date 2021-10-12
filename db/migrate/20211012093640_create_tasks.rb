class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :body
      t.date :duedate

      t.references :category

      t.timestamps
    end
  end
end
