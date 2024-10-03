class User < ApplicationRecord

  validates_presence_of :name, presence: true
  validates_format_of :name, :with => /\A[a-zA-Z]+\z/
  validates :name, length: { maximum: 15 },on: :create

  validates_presence_of :password, presence: true
  validates_length_of :password, is: 8

  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /@/ }

end
