class Status < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user

  validates :content, presence: true, lenght: { minimum: 2 }

  validates :user_id, presence: true
end
