class CreateAuthorCategoryJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :Authors, :Categories do |t|
      # t.index [:author_id, :category_id]
      # t.index [:category_id, :author_id]
    end
  end
end
