class User < ApplicationRecord
  enum sex: { men: 1, women: 2 }

  validates :name, presence: true
  validates :email, presence: true
  validates :sex, presence: true
end
