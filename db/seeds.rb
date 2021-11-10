

puts "Seeding..."


50.times do
  Actor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

Network.create(call_letters: "NBC", channel: rand(1..100))
Network.create(call_letters: "CBS", channel: rand(1..100))
Network.create(call_letters: "ABC", channel: rand(1..100))
Network.create(call_letters: "HBO", channel: rand(1..100))

10.times do
  Show.create(
    name: Faker::Books::CultureSeries.book,
    day: Faker::Lorem.sentence(word_count: 1),
    season: rand(1..20),
    genre: Faker::Lorem.sentence(word_count: 1),
  )
end

100.times do
  Character.create(
    name: Faker::Books::Dune.character,
    actor_id: rand(1..50),
    show_id: rand(1..10),
    catchphrase: Faker::Lorem.sentence
  )
end


puts "Seeded!"