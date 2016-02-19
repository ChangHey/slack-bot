# Description:
#  時報bot for twitter

twitter = require('twitter')
cron = require('cron').CronJob

keys = {
  consumer_key: '',
  consumer_secret: '',
  access_token_key: '',
  access_token_secret: ''
}

module.exports = (robot) ->
  new cron '0 0 * * * *', () =>
    h = new Date().getHours()
    tweet = h + "時なう"

    t = new twitter keys

    t.post 'statuses/update', {status: tweet}, (data) =>
      console.log(data)
