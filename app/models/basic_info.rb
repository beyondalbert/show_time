class BasicInfo < ActiveRecord::Base
	has_attached_file :logo_square, styles: { medium: "300x300>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
	has_attached_file :logo_rectangle, styles: { medium: "150x50>", thumb: "25x75>" }, default_url: "/images/:style/missing.png"
	has_attached_file :wx_qr_code, styles: { medium: "86x86>", thumb: "43x43>" }, default_url: "/images/:style/missing.png"

	validates_attachment_content_type :logo_square, content_type: /\Aimage\/.*\z/
	validates_attachment_content_type :logo_rectangle, content_type: /\Aimage\/.*\z/
	validates_attachment_content_type :wx_qr_code, content_type: /\Aimage\/.*\z/
end
