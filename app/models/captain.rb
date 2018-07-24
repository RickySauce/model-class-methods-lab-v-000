class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    binding.pry
    self.includes(boats: :classifications)
  end

end
