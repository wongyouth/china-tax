class Tax < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :company_gongshang, :company_shengyu, :company_shiye, :company_yanglao, :company_yiliao, :company_zhufang
  attr_accessible :person_gongshang, :person_shengyu, :person_shiye, :person_yanglao, :person_yiliao, :person_zhufang
  attr_accessible :social_gongshang, :social_shengyu, :social_shiye, :social_yanglao, :social_yiliao, :social_zhufang
end
