class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '店員' },
    { id: 3, name: '会員' },
  ]

  include ActiveHash::Associations
  has_many :users

  
end
