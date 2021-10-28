class Photoshoot < ApplicationRecord
    has_one_attached :cover_image
    has_many_attached :images
    validates :cover_image, attached: true, content_type: [:png, :jpg, :jpeg]
    validates :images, attached: true, content_type: [:png, :jpg, :jpeg]
end
