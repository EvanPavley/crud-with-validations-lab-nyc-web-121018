class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :released, inclusion: { in: [true, false] }
  with_options if: :released? do |song|
    song.validates :release_year, presence: true
    song.validates :release_year, numericality: { less_than_or_equal_to: 2019 }
  end
  validates :artist_name, presence: true
  validates :artist_name, uniqueness: { scope: :title, message: "Cannot release same song twice" }

  def released?
    released == true
  end
  #
  # def real_year
  #   if release_year > 2019
  #     errors.add(:release_year, "That year hasn't happend yet")
  #   end
  # end


end
