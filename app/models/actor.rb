class Actor < ActiveRecord::Base

  has_many :characters

  def full_name
    # create an instance method on actor called full_name to return first and 
    #last name together
    "#{first_name} #{last_name}"
  end

  def list_roles
    # build a method on actor that will return a string in the form of
    # character name - show name
    Character.where(actor_id: id).map do |c|
      "#{c.name} - #{Show.find_by(c.show_id).name}"
    end.join(", ")
  end

end

