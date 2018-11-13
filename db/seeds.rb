# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#  id          :bigint(8)        not null, primary key
#  birth_date  :string           not null
#  color       :string
#  name        :string           not null
#  sex         :string(1)
#  description :text             not null

felix = Cat.create(birth_date: '1492/06/06', color: 'blue', name: 'Felix', sex: 'M',
        description: 'Likes long walks on the beach and fish')
