class Character < ActiveRecord::Base
  
  belongs_to :show # belongs to a show
  belongs_to :actor # belongs to an actor
  has_one :network, through: :show # can chain-build associations to which it belongs"

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}" # or Character.catchphrase
  end

end
