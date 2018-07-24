class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    self.includes(boats: :classifications).where(:classifications => {:name => "Catamaran"})
  end

  def self.sailors
    self.includes(boats: :classifications).where(:classifications => {:name => "Sailboat"}).distinct
  end

  def self.talented_seafarers
    self.includes(boats: :classifications).where("classifications.name is ? and classifications.name is ?", 'Sailboat','Motorboat').distinct
  end


end
