class Picture < ActiveRecord::Base
	has_attached_file :content, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :content, content_type: /\Aimage\/.*\z/

  def type
    case self.pic_type
    when 1
      "轮播图"
    when 2
      "关于我们封面"
    when 3
      "加入我们封面"
    when 4
      "精彩视频封面"
    when 5
      "商业应用"
    when 6
      "精彩活动封面"
    end
  end

  def self.type_array
    [["轮播图", 1], ["关于我们封面", 2], ["加入我们封面", 3], 
     ["精彩视频封面", 4], ["商业应用", 5], ["精彩活动封面", 6]]
  end

  def self.join_us_cover
    Picture.where(pic_type: 3).last
  end

  def self.about_us_cover
    Picture.where(pic_type: 2).last
  end

  def self.video_cover
    Picture.where(pic_type: 4).last
  end

  def self.activity_cover
    Picture.where(pic_type: 6).last
  end

  def self.business_cover
    Picture.where(pic_type: 5).last(4)
  end
end
