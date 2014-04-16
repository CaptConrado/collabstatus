class AddPaymentMethodToUser < ActiveRecord::Migration
  def change
    add_column :users, :payment_method, :integer
  end
end
