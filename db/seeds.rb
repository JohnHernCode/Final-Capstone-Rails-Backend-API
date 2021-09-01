# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{
              username: 'admin', password: 'admin', admin: true
            }])

Item.create([{
              title: 'HTML', unit: 'hrs', icon: 'akar-icons:html-fill', target: 30
            }, {
              title: 'JavaScript', unit: 'hrs', icon: 'akar-icons:javascript-fill', target: 30
            }, {
              title: 'Ruby', unit: 'hrs', icon: 'codicon:ruby', target: 15
            }, {
              title: 'Rails', unit: 'hrs', icon: 'mdi:language-ruby-on-rails', target: 10
            }, {
              title: 'React', unit: 'hrs', icon: 'akar-icons:react-fill', target: 30
            }, {
              title: 'Redux', unit: 'hrs', icon: 'akar-icons:redux-fill', target: 200
            }])
