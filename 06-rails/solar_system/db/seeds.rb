Planet.destroy_all

Planet.create(:name => 'Earth', :orbit => 1, :moons => 1, :image => 'http://www.scientificamerican.com/sciam/cache/file/0A2C232A-1E73-497D-BBC990D98F9AD53B.jpg')
Planet.create(:name => 'Mars', :orbit => 1.5, :moons => 2, :image => 'http://space-facts.com/wp-content/uploads/mars.jpg')
Planet.create(:name => 'Venus', :orbit => 0.7, :moons => 0, :image => 'http://upload.wikimedia.org/wikipedia/commons/8/85/Venus_globe.jpg')
Planet.create(:name => 'Jupiter', :orbit => 3.7, :moons => 7, :image => 'http://upload.wikimedia.org/wikipedia/commons/5/5a/Jupiter_by_Cassini-Huygens.jpg')
