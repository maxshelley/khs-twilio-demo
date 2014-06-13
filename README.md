# KHS Twilio Demo

This is a (very) quick rails app I built to demo Twilio for a talk I gave at [Kesgrave High School](http://www.kesgrave.suffolk.sch.uk/) about careers in software development.

The apps allowed us to sign up for a [Twilio](http://www.twilio.com) account, then have everyone in the class send text messages to the number they give us. 

The app shows the numbers in a view, we then used a little Chrome extension I knocked up (https://github.com/maxshelley/khs-chrome-extension) to show that insert that view onto the school's home page and refresh it every 10 seconds. As the student's sent their text messages in, they appeared on the screen.

If you were in the talk, the demo code we looked at is in [this file](https://github.com/maxshelley/khs-twilio-demo/blob/master/app/controllers/messages_controller.rb), you can see it using variables and looping over the list of messages it gets back from Twilio etc.

## Roundup

Used [NitrousIO](https://www.nitrous.io/) to build this solely in the browser and was really impressed with it. A browser-based editor, with full access to the terminal and everything I needed. It ‘just worked’.