class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  attr_writer :mood

  def mood
    binding.pry
    self.nausea > self.happiness ? self.mood = "sad" : self.mood = "happy"
  end
end
