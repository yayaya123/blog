class AddRankingToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :ranking, :integer
  end
end
