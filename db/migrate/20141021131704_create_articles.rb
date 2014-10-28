class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.string :body
      t.string :place

      t.timestamps
    end
  end
end
