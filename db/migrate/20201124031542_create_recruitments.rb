class CreateRecruitments < ActiveRecord::Migration[5.2]
  def change
    create_table :recruitments do |t|
      t.integer :user_id
      t.integer :campsite_id
      t.date :scheduled_start_date
      t.date :scheduled_end_date
      t.string :title
      t.text :content
      t.boolean :is_active, default: true
      t.timestamps
    end
  end
end
