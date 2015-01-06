class Posts < ActiveRecord::Base
  validates :body, presence: true
end