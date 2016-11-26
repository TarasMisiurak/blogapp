class AddUsernameAndUserIdToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :username, :string
    add_column :articles, :user_id, :integer
  end
end
