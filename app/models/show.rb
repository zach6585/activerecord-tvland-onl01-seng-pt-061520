class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  def actors_list 
    actors = [] 
    self.characters.each do |char|
      actors << char.actor.full_name
    end 
    actors
  end 
end