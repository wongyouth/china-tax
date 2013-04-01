class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.float :company_yanglao
      t.float :company_yiliao
      t.float :company_shiye
      t.float :company_shengyu
      t.float :company_gongshang
      t.float :company_zhufang
      t.float :person_yanglao
      t.float :person_yiliao
      t.float :person_shiye
      t.float :person_shengyu
      t.float :person_gongshang
      t.float :person_zhufang
      t.float :social_yanglao
      t.float :social_yiliao
      t.float :social_shiye
      t.float :social_shengyu
      t.float :social_gongshang
      t.float :social_zhufang

      t.timestamps
    end
  end
end
