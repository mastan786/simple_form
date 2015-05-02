class Post < ActiveRecord::Base
	has_attached_file :image, style: { large: "300*300>", medium: "300*300>", thumb: "50*50#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
belongs_to :user
end
