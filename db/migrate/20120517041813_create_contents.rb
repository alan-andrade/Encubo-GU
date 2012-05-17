class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.text :body
      t.references :product

      t.timestamps
    end
  end
end
