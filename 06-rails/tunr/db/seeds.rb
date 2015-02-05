Genre.destroy_all
Song.destroy_all
Album.destroy_all
Artist.destroy_all
User.destroy_all
Mixtape.destroy_all

g1 = Genre.create(:name => 'Nautical Text Rock')
g2 = Genre.create(:name => 'Post jazz')
g3 = Genre.create(:name => 'Ancient')

s1 = Song.create(:name => 'Good Morning Captain')
s2 = Song.create(:name => 'Tin Cans and Twine')
s3 = Song.create(:name => 'Fratres')

a1 = Album.create(:name => 'Spiderland')
a2 = Album.create(:name => 'Tortoise')
a3 = Album.create(:name => 'Spiegel')

r1 = Artist.create(:name => 'Slint')
r2 = Artist.create(:name => 'Arvo Part')
r3 = Artist.create(:name => 'Tortoise')

u1 = User.create(:name => 'Marty')
u2 = User.create(:name => 'Sam')
u3 = User.create(:name => 'Miriam')

m1 = Mixtape.create(:name => 'Code jams')
m2 = Mixtape.create(:name => 'Morning Music')
m3 = Mixtape.create(:name => 'Stupid Everything')

