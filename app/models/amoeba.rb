class Amoeba < ActiveRecord::Base
  attr_accessible :name, :generation, :talent_id
  belongs_to :talent
  has_many :act_amoebas
  has_many :acts, :through => :act_amoebas

  def split
    children = []
    2.times do
      child = Amoeba.create(:name=>self.name, :generation=>(self.generation+1), :talent=>self.talent)
      children << child
    end
    children
  end

end