ChinaTax.Tax = DS.Model.extend
  #province: DS.attr('string')
  #city: DS.attr('string')

  name   : DS.attr('string')

  company_yanglao   : DS.attr('number')
  company_yiliao    : DS.attr('number')
  company_shiye     : DS.attr('number')
  company_shengyu   : DS.attr('number')
  company_gongshang : DS.attr('number')
  company_zhufang   : DS.attr('number')

  person_yanglao   : DS.attr('number')
  person_yiliao    : DS.attr('number')
  person_shiye     : DS.attr('number')
  person_shengyu   : DS.attr('number')
  person_gongshang : DS.attr('number')
  person_zhufang   : DS.attr('number')

  social_yanglao   : DS.attr('number')
  social_yiliao    : DS.attr('number')
  social_shiye     : DS.attr('number')
  social_shengyu   : DS.attr('number')
  social_gongshang : DS.attr('number')
  social_zhufang   : DS.attr('number')

  avarage_salary   : DS.attr('number')

  toF: (x)->
    val = parseFloat x
    if isNaN(val) then 0 else val

  sum: ->
    (x for x in arguments).reduce (prev, item)=>
      prev + @toF @get item
    , 0.0

  sum_for_total: (->
    @sum('sum_for_company', 'sum_for_person')
  ).property 'sum_for_company', 'sum_for_person'

  amount_for_total: (->
    @toF @sum("sum_for_total") * @get('insurance_amount') / 100
  ).property 'salary', 'sum_for_total'

  min_insurance: (->
    parseInt @sum('avarage_salary') * 0.6
  ).property 'avarage_salary'

  max_insurance: (->
    @sum('avarage_salary') * 3
  ).property 'avarage_salary'

  insurance_amount: (->
    if @get('limit_amount')
      Math.max @get('min_insurance'), Math.min @get('max_insurance'), @sum 'salary'
    else
      @sum 'salary'
  ).property 'salary', 'avarage_salary', 'limit_amount'

  unlimit_amount: (->
    !@.get 'limit_amount'
  ).property 'limit_amount'

ChinaTax.Tax.reopen ["yanglao", "yiliao", "shiye", "shengyu", "gongshang", "zhufang"].reduce (prev, name)->
    ["person", "company"].forEach (subject)->
      prev["amount_for_#{subject}_#{name}"] = (->
        @sum("#{subject}_#{name}") * @get('insurance_amount') / 100
      ).property('insurance_amount', "#{subject}_#{name}")

      prev["amount_for_social_#{name}"] = (->
        @sum("social_#{name}") * @get('insurance_amount') / 100
      ).property("insurance_amount", "social_#{name}")

      prev["left_#{name}"] = (->
        @sum("company_#{name}") + @sum("person_#{name}") - @sum("social_#{name}")
      ).property("company_#{name}", "person_#{name}", "social_#{name}")

      prev["amount_for_left_#{name}"] = (->
        @sum("left_#{name}") * @get('insurance_amount') / 100
      ).property("insurance_amount", "left_#{name}")

    prev["sum_for_#{name}"] = (->
      @sum("company_#{name}", "person_#{name}")
    ).property('insurance_amount', "company_#{name}", "person_#{name}")

    prev["amount_for_#{name}"] = (->
      @sum("sum_for_#{name}") * @get('insurance_amount') / 100
    ).property('insurance_amount', "sum_for_#{name}")

    prev
  , {}

ChinaTax.Tax.reopen ["company", "person", "social", "left"].reduce (prev, name)->
    prev["sum_for_#{name}"] = (->
      @sum "#{name}_yanglao", "#{name}_yiliao", "#{name}_shiye", "#{name}_shengyu", "#{name}_gongshang", "#{name}_zhufang"
    ).property 'insurance_amount', "#{name}_yanglao", "#{name}_yiliao", "#{name}_shiye", "#{name}_shengyu", "#{name}_gongshang", "#{name}_zhufang"

    prev["amount_for_#{name}"] = (->
      @sum("sum_for_#{name}") * @get('insurance_amount') / 100
    ).property 'insurance_amount', "sum_for_#{name}"

    prev
  , {}

ChinaTax.Tax.reopen ['didCreate', 'didUpdate'].reduce (prev, name)->
    prev[name] = ->
      $.pnotify
        title: '成功'
        text: '已经成功保存到服务器'
        type: 'success'
    prev
  , {}
