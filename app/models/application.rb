class Application < ApplicationRecord
  validates :name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true

  #attribute :description, :string
  attribute :status, :integer, default: "In Progress"

  has_many :pet_application
  has_many :pets, through: :pet_application

  enum status: { "In Progress": 0, "Pending": 1, "Accepted": 2, "Rejected": 3}
end
