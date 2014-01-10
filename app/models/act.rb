class Act < ActiveRecord::Base
  attr_accessible :name, :date, :time
  has_many :act_amoebas
  has_many :amoebas, :through => :act_amoebas
  has_many :talents, :through => :amoebas # may need a through act_amoebas as well
end