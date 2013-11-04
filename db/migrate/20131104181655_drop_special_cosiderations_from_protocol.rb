class DropSpecialCosiderationsFromProtocol < ActiveRecord::Migration
  def change
    change_table :protocols do |t|
      t.rename :special_cosiderations, :special_considerations
    end
  end
end
