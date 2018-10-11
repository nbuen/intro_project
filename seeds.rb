require 'faker'

10.times {
	title_genre = Genre.create(genre_title: Faker::Book.unique.genre)
		15.times {
			Book.create(book_title: Faker::Book.unique.title,
				author: Faker::Book.author,
				publisher: Faker::Book.publisher,
				genre_name: title_genre)
			5.times {
				Review.create(title: Faker::Lorem.sentence(3),
					comment: Faker::Lorem.paragraphs(1))
			}
		}
}

10.times {
	Store.create(name: Faker::Coffee.blend_name,
			address: Faker::Address.full_address,
			latitude: Faker::Address.latitude,
			longitude: Faker::Address.longitude)
}