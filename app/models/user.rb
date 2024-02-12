class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def inspect
    filtered = self.attributes.except('encrypted_password')
    "#<#{self.class} #{filtered.map{ |k, v| "#{k}: #{v.inspect}" }.join(", ")}>"
  end
end
