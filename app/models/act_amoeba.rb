class ActAmoeba < ActiveRecord::Base
  attr_accessible :amoeba_id, :act_id
  belongs_to :act
  belongs_to :amoeba
end