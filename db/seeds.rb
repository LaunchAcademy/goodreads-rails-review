# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first) movies =

book_1 = Book.create(title: "The Expanse", author: "Atul Gawande", isbn: "5555555555555")
book_2 = Book.create(title: "Crime and Punishment", author: "Richard Blanco", isbn: "5555555555555")
book_3 = Book.create(title: "How to Tame a Unicorn", author: "Charlie the Unicorn", isbn: "5555555555555")
book_4 = Book.create(title: "Centaur Fancy", author: "Brimbar Winterhoof", isbn: "5555555555555")
book_5 = Book.create(title: "Wizard of Earthsea", author: "Ursula Le Guin", isbn: "5555555555555")
book_6 = Book.create(title: "The Witcher", author: "Polish polish polish", isbn: "5555555555555")
book_7 = Book.create(title: "Unicorn Abroad: A Love Story about one Unicorn and one Centaur", author: "Claudia L. Hornsworth", isbn: "5555555555555")
book_7 = Book.create(title: "Between the World and Me", author: "Ta-Nehisi Coates", isbn: "5555555555555")


review_1 = Review.create(rating: 1, body:"this book is too good. ", book: book_1)
review_1 = Review.create(rating: 5, body:"jk this is amazing lol", book: book_1)

review_2 = Review.create(rating: 4, body:"I haven't read this book but I hear its great.", book: book_2)

review_3 = Review.create(rating: 5, body:"This book is necessary and timely. It was timely fifty years ago. I pray it is not timely fifty years from now. Rankine takes on the realities of race in America with elegance but also rage/resignation... maybe we call it rageignation.", book: book_7)

review_4 = Review.create(rating: 3, body: "Magical", book: book_3)

review_5 = Review.create(rating: 4, body: "Yasssss", book: book_4)

review_6 = Review.create(rating: 5, body: " Fabulous. Great read. So much I could relate to, but also so much that I'd never thought about. I didn't agree with all of it, but I don't need to agree to grow and learn from an opinion. My only complaint is that it wasn't longer. I wanted more more more. Thumbs up.", book: book_5)
