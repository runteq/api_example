['Rubyエンジニア', 'PHPエンジニア', 'iOSエンジニア', 'Androidエンジニア'].each do |tag_name|
  Tag.find_or_create_by(name: tag_name)
end
10.times.each do
  user = FactoryBot.create(:user)
  user.tags << Tag.all.sample(2)
  FactoryBot.create_list(:micropost, 10, user: user)
end

