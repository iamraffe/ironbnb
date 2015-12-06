class Flat < ActiveRecord::Base
  belongs_to :user
  has_attached_file :picture_url, styles: { large: "600x600#", medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :picture_url, content_type: /\Aimage\/.*\Z/
end
