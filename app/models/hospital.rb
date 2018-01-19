class Hospital < ActiveRecord::Base
  belongs_to :doctor

  has_many :hospital_categories
  has_many :categories, through: :hospital_categories

  def category_ids=(ids)
    ids.each do |id|
      if id != ""
        category = Category.find(id)
        self.categories << category
      end
    end
  end
end