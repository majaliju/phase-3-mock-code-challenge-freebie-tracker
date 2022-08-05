class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      
      # # old school way apparently
      # t.integer :company_id
      # t.integer :dev_id

      # same way but new school approach
      t.belongs_to :dev
      t.belongs_to :company
    end
  end
end
