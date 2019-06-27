# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Payment.create([{ title: 'Rent', amount_per_month: 1300 }, { title: 'Water', amount_per_month: 40 },
		{ title: 'Electric', amount_per_month: 60 }, { title: 'Parking', amount_per_month: 160 }
		])
Deposit.create([{ title: 'Paycheck', amount_per_month: 3250 }, { title: 'Social Security', amount_per_month: 270}
		])
