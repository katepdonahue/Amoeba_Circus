class Act < ActiveRecord::Base
  attr_accessible :name, :date, :time
  has_many :amoebas
  has_many :talents, :through => :amoebas
end