# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

BasicInfo.create!(name: '秀探科技', icp: '浙ICP备xxxxxxxx号-x')
FunctionModule.create!(name: '商业应用', is_display: true)
FunctionModule.create!(name: '精彩视频', is_display: true)
FunctionModule.create!(name: '精彩活动', is_display: true)
