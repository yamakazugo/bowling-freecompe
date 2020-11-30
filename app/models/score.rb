class Score < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  
  with_options presence: true do
   validates :title
   validates :score
   validates :ranking
  end
  
end
