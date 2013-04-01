class TaxSerializer < ActiveModel::Serializer
  attributes :id, :company_yanglao, :company_yiliao, :company_shiye, :company_shengyu, :company_gongshang, :company_zhufang, :person_yanglao, :person_yiliao, :person_shiye, :person_shengyu, :person_gongshang, :person_zhufang, :social_yanglao, :social_yiliao, :social_shiye, :social_shengyu, :social_gongshang, :social_zhufang
end
