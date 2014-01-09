class Talent < ActiveRecord::Base
  attr_accessible :name
  has_many :amoebas
end