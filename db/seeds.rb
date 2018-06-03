# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
p 'Users destroyed'
Playlist.destroy_all
p 'Playlist destroyed'

users = User.create([{
  first_name: 'Patrick',
  last_name: 'Vignaud',
  email:'pvignaud@yahoo.fr',
  password: 'patrick',
  spotify_account: 'raphaelfinance'}])

p users

playlists = Playlist.create([{
  title: 'Anniv Severine',
  user_id: User.find_by_first_name("Patrick").id
  },
  {
  title: '50ans Bruno',
  user_id: User.find_by_first_name("Patrick").id}])

p playlists
