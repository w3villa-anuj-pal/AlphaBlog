class Blog < ApplicationRecord
    belongs_to :user
    validates :title, presence: true , length: { in: 2..20} , 
                      uniqueness: {case_sensitive: false}
     validates :description, presence: true , length:  {minimum: 10}
end
