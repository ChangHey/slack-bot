# Description
#   アニメ通知

execsyncs = require('execsyncs')
cron = require('cron').CronJob
anime_script = "scripts/anime.py"
exec_script = "/usr/local/bin/python " + anime_script

is_blank = (s) -> 
  unless s?
    return true
  if s == ""
    return true
  return false
sleep = (ms) ->
  start = new Date().getTime()
  continue while new Date().getTime() - start < ms
anime = () ->
  ret = execsyncs(exec_script)

module.exports = (robot) ->
  new cron '0 0 18 * * *', () =>
    ret = ""
    while is_blank ret
      sleep 5000
      ret = anime()
    result = "今日のアニメはこれよ\n" + ret
    robot.send {room: "anime"}, result
  , null, true, "Asia/Tokyo"

