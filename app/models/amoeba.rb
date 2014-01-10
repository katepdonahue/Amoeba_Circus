class Amoeba < ActiveRecord::Base
  attr_accessible :name, :generation, :talent_id
  belongs_to :talent
  has_many :acts, :through => :act_amoebas
end