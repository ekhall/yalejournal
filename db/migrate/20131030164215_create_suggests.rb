class CreateSuggests < ActiveRecord::Migration
  def change
    create_table :suggests do |t|
      t.belongs_to :article, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
