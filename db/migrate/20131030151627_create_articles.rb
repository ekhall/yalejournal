class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :journal
      t.date :presentation_date
      t.date :publication_date
      t.text :presentation_comments

      t.timestamps
    end
  end
end
