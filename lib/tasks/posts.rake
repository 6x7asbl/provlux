namespace :posts do
  desc "TODO"
  task generate: :environment do
    50.times do |i|
      Post.create(
        user_id: User.all.sample.id,
        title: Faker::Lorem.sentence(rand(8) + 1 , false, 4),
        excerpt: Faker::Lorem.paragraph(rand(3) + 1 , false, 4),
        content: Faker::Lorem.paragraph(rand(8) + 1 , false, 4),
        published_at: Faker::Time.between(DateTime.now - 10, DateTime.now)
      )

    end
  end

end
