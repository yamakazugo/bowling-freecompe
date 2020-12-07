class Schedule < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '第1週目' },
    { id: 3, name: '第2週目' },
    { id: 4, name: '第3週目' },
    { id: 5, name: '第4週目' },
  ]
  include ActiveHash::Associations
  has_many :scores

end
