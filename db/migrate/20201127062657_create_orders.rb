class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.boolean :fulfilled
      t.decimal :total
      t.decimal :subtotal
      t.decimal :gst
      t.decimal :pst

      t.timestamps
    end
  end
end
