angular.module("admin.orderCycles").factory 'ScheduleResource', ($resource) ->
  $resource('/admin/schedules/:id/:action.json', {}, {
    'index':
      method: 'GET'
      isArray: true
    'create':
      method: 'POST'
    'update':
      method: 'PUT'
  })
