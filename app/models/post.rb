class Post < ActiveRecord::Base
    
    belongs_to :category
    enum status: [:published, :archived] # mapowane z poziomu modelu na inty. 
    mount_uploader :photo, PhotoUploader
    
end