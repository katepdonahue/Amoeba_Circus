class Amoeba < ActiveRecord::Base
  attr_accessible :name, :generation, :talent_id, :act_id
  belongs_to :talent
  belongs_to :act
end