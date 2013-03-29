ChinaTax.Tax = DS.Model.extend
  province: DS.attr('string')
  city: DS.attr('string')

  company_yanglao: DS.attr('number')
  company_yiliao: DS.attr('number')
  company_shiye: DS.attr('number')
  company_shengyu: DS.attr('number')
  company_gongshang: DS.attr('number')
  company_zhufang: DS.attr('number')

  person_yanglao: DS.attr('number')
  person_yiliao: DS.attr('number')
  person_shiye: DS.attr('number')
  person_shengyu: DS.attr('number')
  person_gongshang: DS.attr('number')
  person_zhufang: DS.attr('number')

  sum_yanglao: (->
    c = @get('company_yanglao') ? 0
    p = @get('person_yanglao') ? 0
    c + p
  ).property('company_yanglao', 'person_yanglao')

  sum_yiliao: (->
    c = @get('company_yiliao') ? 0
    p = @get('person_yiliao') ? 0
    c + p
  ).property('company_yiliao', 'person_yiliao')

  sum_shiye: (->
    c = @get('company_shiye') ? 0
    p = @get('person_shiye') ? 0
    c + p
  ).property('company_shiye', 'person_shiye')

  sum_shengyu: (->
    c = @get('company_shengyu') ? 0
    p = @get('person_shengyu') ? 0
    c + p
  ).property('company_shengyu', 'person_shengyu')

  sum_gongshang: (->
    c = @get('company_gongshang') ? 0
    p = @get('person_gongshang') ? 0
    c + p
  ).property('company_gongshang', 'person_gongshang')

  sum_zhufang: (->
    c = @get('company_zhufang') ? 0
    p = @get('person_zhufang') ? 0
    c + p
  ).property('company_zhufang', 'person_zhufang')

