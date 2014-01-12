# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Act.create([{:name=>"Fireball", :date=>Date.new(2014,6,4), :time=>Time.new(2008,6,21, 13,30,0)},
            {:name=>"Baby's Slumber", :date=>Date.new(2014,6,4), :time=>Time.new(2008,6,21, 14,30,0)},
            {:name=>"Loopy Lala", :date=>Date.new(2014,6,4), :time=>Time.new(2008,6,21, 15,30,0)}])
Amoeba.create([{:name=>"Bob", :talent_id=>"1"},
               {:name=>"Cora", :talent_id=>"2"},
               {:name=>"Lofi", :talent_id=>"3"},
               {:name=>"Sandy", :talent_id=>"4"}, 
               {:name=>"Meep", :talent_id=>"5"}, 
               {:name=>"Kate", :talent_id=>"5"}])
Talent.create([{:name=>"acrobat"}, 
               {:name=>"contortionist"}, 
               {:name=>"clown"}, 
               {:name=>"juggler"}, 
               {:name=>"freak"}])
ActAmoeba.create([{:amoeba_id=>1, :act_id=>1},
                  {:amoeba_id=>2, :act_id=>1},
                  {:amoeba_id=>6, :act_id=>1},
                  {:amoeba_id=>2, :act_id=>2},
                  {:amoeba_id=>4, :act_id=>2},
                  {:amoeba_id=>5, :act_id=>3},
                  {:amoeba_id=>3, :act_id=>3},
                  {:amoeba_id=>4, :act_id=>3},
                  {:amoeba_id=>5, :act_id=>3}])