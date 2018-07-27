class Post < ApplicationRecord
  belongs_to :user
  has_many :tags

  validates :user, :title, presence: true
  validates :created_at, uniqueness: true
end
