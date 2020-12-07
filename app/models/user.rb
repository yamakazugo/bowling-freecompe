class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
   validates :name
   validates :profile_id, numericality: { other_than: 1 }
   validates :occupation_id, numericality: { other_than: 1 }
  end

  has_many :scores
  has_many :comments
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :occupation
  belongs_to_active_hash :profile
  

end
