class Amoeba < ActiveRecord::Base
  attr_accessible :name, :generation, :talent_id
  belongs_to :talent
  has_many :act_amoebas
  has_many :acts, :through => :act_amoebas

  def jr1
    origin = self.name
    "#{origin[0].next}#{origin[1..-2]}f"
  end

  def jr2
    origin = self.name
    "#{origin[0].next.next}#{origin[1..-2]}s"
  end

  def split
    Amoeba.create(:name=>jr1, :generation=>(generation+1), :talent_id=>talent_id)
    Amoeba.create(:name=>jr2, :generation=>(generation+1), :talent_id=>talent_id)
    destroy
  end

end