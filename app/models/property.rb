class Property < ApplicationRecord
    mount_uploader :image, ImageUploader
    enum utilityfrom:{
    Rent:1,
    Buy:2
    }
    
    has_many :favorites
end
