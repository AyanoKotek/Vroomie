class DeleteDateFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :date, :date
  end
end
