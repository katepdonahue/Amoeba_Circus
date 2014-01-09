class Act < ActiveRecord::Base
  attr_accessor :name, :date, :time
  has_many :amoebas
end