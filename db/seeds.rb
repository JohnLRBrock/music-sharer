# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

video = 'https://www.youtube.com/watch?v=0Hegd4xNfRo'

message = "I spent the first couple of decades of my life as a Christian. My belief was the driving force in my life during that time and when I finally stopped running from my doubts in college I didn't like what I found. It would be dishonest of me to hold onto faith in something because it's comforting.\n\nA couple of years later, I got tickets to see Leon Bridges in concert and I went with one of my best friends. When Leon brought the lights down low and played River, I felt more spiritual than I had in years. Since religion stopped being a major part of my life I've been neglecting my spirituality trying to establish my new identity. Leon reminded me that you can have spirituality without religion and his music will always be special to me because of that. Thanks Leon."

Log.create(video: video, message: message)