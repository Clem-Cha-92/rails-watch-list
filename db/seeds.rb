# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = 'http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>'
movie_serialized = URI.open(url).read
movies = JSON.parse(movie_serialized)

puts "Cleaning db"
Movie.destroy_all

Movie.create(title: movies["results"][1]["title"], overview: movies["results"][1]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][1]["poster_path"]}", rating: movies["results"][1]["vote_average"])
Movie.create(title: movies["results"][2]["title"], overview: movies["results"][2]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][2]["poster_path"]}", rating: movies["results"][2]["vote_average"])
Movie.create(title: movies["results"][5]["title"], overview: movies["results"][5]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][5]["poster_path"]}", rating: movies["results"][5]["vote_average"])
Movie.create(title: movies["results"][6]["title"], overview: movies["results"][6]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][6]["poster_path"]}", rating: movies["results"][6]["vote_average"])
Movie.create(title: movies["results"][7]["title"], overview: movies["results"][7]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][7]["poster_path"]}", rating: movies["results"][7]["vote_average"])
Movie.create(title: movies["results"][8]["title"], overview: movies["results"][8]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][8]["poster_path"]}", rating: movies["results"][8]["vote_average"])
Movie.create(title: movies["results"][9]["title"], overview: movies["results"][9]["overview"], poster_url: "https://image.tmdb.org/t/p/w900#{movies["results"][9]["poster_path"]}", rating: movies["results"][9]["vote_average"])
Movie.create(title: movies["results"][10]["title"], overview: movies["results"][10]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][10]["poster_path"]}", rating: movies["results"][10]["vote_average"])
Movie.create(title: movies["results"][11]["title"], overview: movies["results"][11]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][11]["poster_path"]}", rating: movies["results"][11]["vote_average"])
Movie.create(title: movies["results"][12]["title"], overview: movies["results"][12]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][12]["poster_path"]}", rating: movies["results"][12]["vote_average"])
Movie.create(title: movies["results"][13]["title"], overview: movies["results"][13]["overview"], poster_url: "https://image.tmdb.org/t/p/w1300#{movies["results"][13]["poster_path"]}", rating: movies["results"][13]["vote_average"])
Movie.create(title: movies["results"][14]["title"], overview: movies["results"][14]["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movies["results"][14]["poster_path"]}", rating: movies["results"][14]["vote_average"])

puts "Finished"
