class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  def actors_list 
    actors = [] 
    self.actors.each do |act|
      actors << act.name 
  end 
end