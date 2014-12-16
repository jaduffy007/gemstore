class Review < ActiveRecord::Base
   belongs_to :product
   #have validation through angular
end
