class Amoeba < ActiveRecord::Base
  attr_accessible :name, :generation, :talent_id
  belongs_to :talent
  has_many :act_amoebas
  has_many :acts, :through => :act_amoebas

  def split
    children = []
    child1 = Amoeba.new
    child1.name = self.name
    child1.generation = self.generation + 1
    child1.talent = self.talent
    child1.save
  end
end