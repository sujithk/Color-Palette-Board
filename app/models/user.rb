class User < ApplicationRecord
  has_many :palettes,dependent: :destroy
  validates_presence_of :username,:ip_address

  def find_favourite_color
   self.palettes.group(:code).count.sort {|a1,a2| a2[1]<=>a1[1]}.first[0]
  end

end
