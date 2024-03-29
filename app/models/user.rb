class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role:           [:user, :vip, :admin, :prospect]
  enum payment_method: [:paypal,:wire,:check]
  after_initialize :set_default_role, :if => :new_record?

  has_many :channels
  has_many :videos, through: :channels

  def set_default_role
    self.role ||= :user
  end


end
