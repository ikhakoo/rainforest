class AddCreatedByIdColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :created_by_id, :integer
  end
end
