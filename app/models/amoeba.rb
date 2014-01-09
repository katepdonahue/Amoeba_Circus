class Amoeba < ActiveRecord::Base
  attr_accessor :name, :generation, :talent_id, :act_id
  belongs_to :talent
  belongs_to :act
end