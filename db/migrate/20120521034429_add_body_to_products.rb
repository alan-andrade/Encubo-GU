class AddBodyToProducts < ActiveRecord::Migration
  def change
    add_column :products, :body, :text
  end
end
