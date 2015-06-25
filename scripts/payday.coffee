# Description:
#   給料日通知bot

cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 10 25 * *', () =>
    robot.send {room: "general"}, "今日は給料日だよ。@ginger_bird のお金でお寿司が食べたいな💝", null, true, "Asia/Tokyo"
