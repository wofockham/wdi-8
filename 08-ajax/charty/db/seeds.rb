Temperature.destroy_all

maximums = [25.9, 25.8, 24.8, 22.4, 19.5, 17, 16.3, 17.8, 20, 22.1, 23.6, 25.2]
minimums = [18.7, 18.8, 17.6, 14.7, 11.6, 9.3, 8.1, 9, 11.1, 13.6, 15.6, 17.5]

temps = maximums.zip(minimums)

temps.each do |max, min|
  Temperature.create :maximum => max, :minimum => min
end
