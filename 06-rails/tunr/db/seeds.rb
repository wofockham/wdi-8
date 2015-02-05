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

# Associate songs and artists:
r1.songs << s1
r3.songs = [s2]
r3.save
s3.artist = r2
s3.save

# Associate songs and genres:
g1.songs << s1
g2.songs = [s2]
g2.save
s3.genres << g3

# Associates songs and albums:
s1.album = a1
s1.save
s2.album = a2
s2.save
a3.songs << s3

# Associate songs and mixtapes:
m1.songs = [s1, s2, s3]
m1.save
m2.songs << s1 << s2
m3.songs << s3

# Associate mixtapes and users:
u1.mixtapes << m1
m2.user = u2
m2.save
m3.user = u3
m3.save
