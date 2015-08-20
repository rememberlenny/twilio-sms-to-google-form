# Twilio SMS-to-google-form service

This project is a small Ruby server that receives incoming SMS callbacks from Twilio and forwards the contents to a specified email address.

## Installation

* deploy it to a web server
* pass the `TWILIO_ID` and `TWILIO_SECRET` environment variables to the script somehow (e.g. in server start scripts or nginx config, that depends on your configuration)
* set the incoming SMS URL in Twilio configuration to http://someserver/somepath/sms (the URL to this script once you've deployed it)

## Deployment to Heroku

If you want to deploy the webapp to your Heroku account, simply click the button below:

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)
