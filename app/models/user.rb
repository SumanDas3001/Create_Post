class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # model association
  has_many :posts, dependent: :destroy
  after_create :send_email_to_author

  def send_email_to_author
    puts "mnmn saa saa"
    UserMailer.signup_confirmation(self.email, self.username).deliver
  end


end
