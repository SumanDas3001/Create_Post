class AddPostImageToPosts < ActiveRecord::Migration[5.2]
  def change
    add_attachment :posts, :post_image
  end
end
