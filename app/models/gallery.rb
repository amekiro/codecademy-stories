class Gallery < ApplicationRecord
    def self.get_previous_img(img)
        Gallery.where("galleries.id < ? ", img.id).last
    end
    
    def self.get_next_img(img)
        Gallery.where("galleries.id > ? ", img.id).first
    end
end
