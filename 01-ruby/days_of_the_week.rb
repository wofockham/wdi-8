# 1.
days_of_the_week = %w{ Monday Tuesday Wednesday Thursday Friday Saturday Sunday }

# 2.
days_of_the_week.unshift days_of_the_week.pop

# 3.
new_days = [days_of_the_week[1..5],
            [days_of_the_week.last,
             days_of_the_week.first
            ]
           ]
p new_days

# 4.
new_days.delete_at 0
p new_days

# 5.
p new_days.flatten.sort
