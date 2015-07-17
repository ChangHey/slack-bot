# Description
#   アニメ通知

execsyncs = require('execsyncs')
cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 18 * * *', () =>
    result = "" + execsyncs("python scripts/anime.py")
    robot.send {room: "anime"}, result
  , null, true, "Asia/Tokyo"

