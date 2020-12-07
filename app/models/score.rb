class Score < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  
  with_options presence: true do
   validates :schedule_id, numericality: { other_than: 1 }
   validates :score, inclusion: {in: (1..300)}
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :schedule
  
end
