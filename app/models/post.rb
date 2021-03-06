class Post < ApplicationRecord
  belongs_to :user
  has_attached_file :post_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :post_image, content_type: /\Aimage\/.*\z/

  validates_presence_of :title, :description, :content, :author_name 
end
