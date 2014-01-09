# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Act.create([{:name=>"Fireball", :date=>"12/30/2014", :time=>"6:00pm"},
            {:name=>"Baby's Slumber", :date=>"12/30/2014", :time=>"6:30pm"},
            {:name=>"Loopy Lala", :date=>"12/30/2014", :time=>"7:00pm"}])
Amoeba.create([{:name=>"Bob", :generation=>"1", :talent_id=>"1", :act_id=>"1"},
               {:name=>"Cora", :generation=>"1", :talent_id=>"2", :act_id=>"2"},
               {:name=>"Lofi", :generation=>"1", :talent_id=>"3", :act_id=>"2"},
               {:name=>"Sandy", :generation=>"1", :talent_id=>"4", :act_id=>"3"}, 
               {:name=>"Meep", :generation=>"1", :talent_id=>"5", :act_id=>"3"}, 
               {:name=>"Kate", :generation=>"1", :talent_id=>"5", :act_id=>"3"}])
Talent.create([{:name=>"acrobat"}, 
               {:name=>"contortionist"}, 
               {:name=>"clown"}, 
               {:name=>"juggler"}, 
               {:name=>"freak"}])