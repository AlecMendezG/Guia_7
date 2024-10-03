class Estudiante < ApplicationRecord
  validates_presence_of :nombres, presence: true
  validates_format_of :nombres, :with => /\A[a-zA-Z\s]+\z/
  validates :nombres, length: { maximum: 40 },on: :create

  validates_presence_of :apellidos, presence: true
  validates_format_of :apellidos, :with => /\A[a-zA-Z\s]+\z/
  validates :apellidos, length: { maximum: 40 },on: :create

  validates_presence_of :carrera, presence: true
 validates_format_of :carrera, :with => /\A[a-zA-Z\s]+\z/
  validates :carrera, length: { maximum: 40 },on: :create

  validates :carnet, presence: true, length: { maximum: 15 }, format: { with: /\A\d{2}-\d{5}-\d\z/ }


  
end
