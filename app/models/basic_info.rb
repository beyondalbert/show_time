class BasicInfo < ActiveRecord::Base
	has_attached_file :logo_square, styles: { medium: "50x50>", thumb: "20x20>" }, default_url: "logo.jpg"
	has_attached_file :logo_rectangle, styles: { medium: "150x50>", thumb: "25x75>" }, default_url: "logo_rectangle.png"
	has_attached_file :wx_qr_code, styles: { medium: "86x86>", thumb: "43x43>" }, default_url: "weixin.png"

	validates_attachment_content_type :logo_square, content_type: /\Aimage\/.*\z/
	validates_attachment_content_type :logo_rectangle, content_type: /\Aimage\/.*\z/
	validates_attachment_content_type :wx_qr_code, content_type: /\Aimage\/.*\z/
end
