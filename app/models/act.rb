class Act < ActiveRecord::Base
  attr_accessible :name, :date, :time
  has_many :amoebas
end