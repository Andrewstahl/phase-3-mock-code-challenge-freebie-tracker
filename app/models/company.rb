class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(item_name: item_name, value: value, company_id: self.id, dev_id: dev.id)
  end

  def self.oldest_company
    oldest_age = 10000
    company_id = 0
    self.all.each do |company|
      if company.founding_year < oldest_age
        company_id = company.id
      end
    end
    Company.find(company_id)
  end
end
