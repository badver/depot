class AddOrderToLineItem < ActiveRecord::Migration
  def change
    add_reference :line_items, :order, index: true
    #add_column(:line_items, :order_id, :integer)
  end
end
