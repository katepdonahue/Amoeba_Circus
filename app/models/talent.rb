class Talent < ActiveRecord::Base
  attr_accessible :name
  has_many :amoebas
  has_many :acts, :through => :amoebas
end