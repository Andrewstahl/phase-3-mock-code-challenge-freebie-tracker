class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.each do |freebie|
      if freebie.item_name == item_name
        return true
      end
    end
    return false
  end

  def give_away(dev, freebie)
    # Only gives it away if the dev id on the freebie
    # matches the id on the current dev
    if freebie.dev_id == self.id
      freebie.dev = dev
      freebie.save
      puts "Thanks for your donation!"
    else
      puts "Sorry, that's not yours!"
    end
  end

end
