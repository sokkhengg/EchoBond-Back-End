class Company < ApplicationRecord
  has_many :reviews

  # creates a unique slug based off of the company's name when we create a new company
  # 'facebook 1'.parameterize => "facebook-1" give a nice syntax
  # before_create :slugify
  
  # new way to use instead of using the id param 
  # def slugify
  #   self.slug = name.parameterize
  # end

  def avg_score
    return 0 unless reviews.size.positive?

    reviews.average(:score).to_f.round(2)
  end
end
