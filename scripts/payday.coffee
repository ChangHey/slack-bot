# Description:
#   給料日通知bot

cron = require('cron').CronJob

module.exports = (robot) ->
  w = new Date().getDay()
  new cron '0 0 10 25 * *', () =>
    if w is 0 || w is 6
      return
    robot.send {room: "general"}, "今日は給料日だよ。@ginger_bird のお金でお寿司が食べたいな💝"
  , null, true, "Asia/Tokyo"
  new cron '0 0 10 23,24 * *', () =>
    if w is 5
      robot.send {room: "general"}, "今日は給料日だよ。@ginger_bird のお金でお寿司が食べたいな💝"
    else
      return
  , null, true, "Asia/Tokyo"
