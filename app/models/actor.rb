class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name
    self.last_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # binding.pry
    return "#{self.characters.map {|c| c.name}[0]} - #{self.shows.map {|s| s.name}[0]}"
  end

end