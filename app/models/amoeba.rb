class Amoeba < ActiveRecord::Base
  attr_accessible :name, :generation, :talent_id
  belongs_to :talent
  has_many :act_amoebas
  has_many :acts, :through => :act_amoebas

  def jr1
    origin = self.name
    "#{origin[0].next}#{origin[1..-1]}ff"
  end

  def jr2
    origin = self.name
    "#{origin[0].next.next}#{origin[1..-1]}ss"
  end

  def split
    Amoeba.create(:name=>self.jr1, :generation=>(self.generation+1), :talent_id=>self.talent_id)
    Amoeba.create(:name=>self.jr2, :generation=>(self.generation+1), :talent_id=>self.talent_id)
    self.destroy
  end

end