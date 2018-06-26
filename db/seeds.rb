# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MachineCategory.destroy_all
Machine.destroy_all
Log.destroy_all
User.destroy_all
UserLog.destroy_all


puts("Creating Machine Categories...")

#Machines Categories

chest = MachineCategory.create!(category: 'Chest')
legs = MachineCategory.create!(category: 'Legs')
abs = MachineCategory.create!(category: 'Abs')
shoulders = MachineCategory.create!(category: 'Shoulders')
back = MachineCategory.create!(category: 'Back')

#Machines
puts("Creating Machines...")
single_leg_press = Machine.create!(name: 'Single Leg press', description: 'Leg press with only one leg', machine_category: legs) 
barbell_bench_press = Machine.create!(name: 'Barbell Bench Press', description: 'Bench press, lying down on a flat bench', machine_category: chest)
smith_machine_calf_raise = Machine.create!(name: 'Smith Machine Calf Raise', description: 'Using the smith machine to lift the calves', machine_category: legs) 

#Logs
puts("Creating Logs...")
log1 = Log.create(sets: 3, weights: 20, machine: single_leg_press)
log2 = Log.create(sets: 5, weights: 10, machine: barbell_bench_press)
log3 = Log.create(sets: 4, weights: 40, machine: smith_machine_calf_raise)

#Users
puts("Creating Users...")
user1 = User.create(first_name: 'Joana', last_name: 'Reis', email: 'joana@gmail.com', password: 123456)
user2 = User.create(first_name: 'Pedro', last_name: 'Carneiro', email: 'pedro@gmail.com', password: 123456)
user3 = User.create(first_name: 'Antonio', last_name: 'Caleia', email: 'antonio@gmail.com', password: 123456)

#UserLogs
puts("Creating UserLogs...")
userlog1 = UserLog.create(user: user1, log: log2)
userlog2 = UserLog.create(user: user1, log: log1)
userlog3 = UserLog.create(user: user2, log: log3)



