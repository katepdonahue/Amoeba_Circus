class Talent < ActiveRecord::Base
  attr_accessor :name
  has_many :amoebas
end