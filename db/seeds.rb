Card.destroy_all

colors = %w(#F2F2F0 #11BFAE #456173 #1B3C59)

# 1000.times do 
#   Card.create(color: colors.sample)
# end

for i in 1..12
  picture = File.open(File.join(Rails.root,"app/assets/images/#{i}.jpg"))
  Card.create(color: colors.sample, picture: picture)
end
