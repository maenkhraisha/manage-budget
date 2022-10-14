class Group < ApplicationRecord
    validates :name, presence: true
    # validate :main_picture_format
   
    belongs_to :user, class_name: "User", foreign_key: "user_id"    
    has_one_attached :icon

    has_many :categorization
    has_many :purchases, through: :categorization

    private

    # def main_picture_format
    #     return unless :icon.attached?
    #     return if :icon.blob.content_type.start_with? 'image/'
    #     :icon.purge_later
    #     errors.add(:icon, 'needs to be an image')
    # end

end
