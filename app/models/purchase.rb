class Purchase < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id"    
    
    has_many :categorization
    has_many :group, through: :categorization
end
