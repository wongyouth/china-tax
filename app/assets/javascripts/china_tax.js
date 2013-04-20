//= require ./store
//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./views
//= require_tree ./helpers
//= require_tree ./templates
//= require ./router
//= require_tree ./routes
//= require_self

DS.RESTAdapter.configure('plurals', {
  tax: 'taxes'
});

ChinaTax.Tax.FIXTURES = [{
  id: 1,
  name: '2012 上海',

  company_yanglao   : 22,
  company_yiliao    : 12,
  company_shiye     : 2,
  company_shengyu   : 0.5,
  company_gongshang : 0.5,
  company_zhufang   : 7,

  person_yanglao   : 8,
  person_yiliao    : 2,
  person_shiye     : 0,
  person_shengyu   : 0,
  person_gongshang : 0,
  person_zhufang   : 7,

  social_yanglao   : 19,
  social_yiliao    : 9,
  social_shiye     : 2,
  social_shengyu   : 0.5,
  social_gongshang : 0.5,
  social_zhufang   : 0,

  avarage_salary   : 4331
}];
