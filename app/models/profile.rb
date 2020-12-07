class Profile < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '東京ボール' },
    { id: 3, name: '長野ボール' },
    { id: 4, name: '福島ボール' },
  ]
  include ActiveHash::Associations
  has_many :users

end
