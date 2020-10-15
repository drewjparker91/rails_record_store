class Album < ApplicationRecord
  scope :rock, -> { where(genre: "Rock").limit(5) }
  scope :rap, -> { where(genre: "Rap").limit(5) }
  scope :country, -> { where(genre: "Country").limit(5)}
  scope :name_search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%") }
  
  has_many :songs, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 100
  before_save(:titleize_album)

  private
    def titleize_album
      self.name = self.name.titleize
      self.genre = self.genre.titleize
    end
end