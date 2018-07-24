class Captain < ActiveRecord::Base
  has_many :boats

  def self.sailors
  end

end
