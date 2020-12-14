# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#:number, :name, :discipline, :area, :price

User.create(name: 'Admin', email: 'admin@ncsu.edu', password: 'password', phone_num: '123', addr: '123 Admin Ln.', type: 'Admin')

User.create(name: 'Dr. G', discipline: 'CSC', email: 'efg@ncsu.edu', password: 'password', phone_num: '123', addr: '123 EFG Ln.', type: 'Teacher')
User.create(name: 'Dr. H', discipline: 'CSC', email: 'heckman@ncsu.edu', password: 'password', phone_num: '123', addr: '123 Heckman Ln.', type: 'Teacher')
User.create(name: 'Dr. S', discipline: 'MAE', email: 'smith@ncsu.edu', password: 'password', phone_num: '123', addr: '123 Smith Ln.', type: 'Teacher')

Course.create(number: 517, name: 'Object-Oriented Design & Development', discipline: 'CSC', area: 'Design & Development', price: 1000)
Course.create(number: 533, name: 'Privacy in the Digital Age', discipline: 'CSC', area: 'Security', price: 1250)
Course.create(number: 574, name: 'Computer & Network Security', discipline: 'CSC', area: 'Security', price: 1300)
Course.create(number: 501, name: 'Operating Systems Principles', discipline: 'CSC', area: 'OS', price: 1275)
Course.create(number: 506, name: 'Architecture of Parallel Computers', discipline: 'CSC', area: 'OS', price: 1500)
Course.create(number: 510, name: 'Software Engineering', discipline: 'CSC', area: 'Design & Development', price: 950)
Course.create(number: 501, name: 'Engineering Thermodynamics', discipline: 'MAE', area: 'Dynamics', price: 1050)
Course.create(number: 515, name: 'Automotive Vehicle Dynamics', discipline: 'MAE', area: 'Dynamics', price: 1000)
Course.create(number: 526, name: 'Product Design', discipline: 'MAE', area: 'Product Design', price: 1200)
Course.create(number: 534, name: 'Mechatronics Design', discipline: 'MAE', area: 'Product Design', price: 1350)
Course.create(number: 563, name: 'Molecular Origins of Life', discipline: 'CH', area: 'Chemistry', price: 1000)
Course.create(number: 572, name: 'Proteomics', discipline: 'CH', area: 'Chemistry', price: 900)
