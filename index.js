'use strict';

const line = require('@line/bot-sdk');
const express = require('express');

// create LINE SDK config from env variables
const config = {
  channelAccessToken: "1b/t4IVQLQCLe1ABBy1RE+J6KFRINWD3XGf64AS19LEBs1L/xv99/tHqCd3rh9OCs1fGget3+8PJyfT/g0uXwMdqJligbPVz/ooQeg0XeNI8l+tmkHotHLtH7q/0Og27CGjP0vQbbJONfMpDy+kofAdB04t89/1O/w1cDnyilFU=",
  channelSecret: "8f9b60f1cc28622e0f998069264a8d3c",
};

// create LINE SDK client
const client = new line.Client(config);

// create Express app
// about Express itself: https://expressjs.com/
const app = express();

// register a webhook handler with middleware
// about the middleware, please refer to doc
app.post('/callback', line.middleware(config), (req, res) => {
  Promise
    .all(req.body.events.map(handleEvent))
    .then((result) => res.json(result))
    .catch((err) => {
      console.error(err);
      res.status(500).end();
    });
});

// event handler
function handleEvent(event) {
  if (event.type !== 'message' || event.message.type !== 'text') {
    // ignore non-text-message event
    return Promise.resolve(null);
  }

  // create a echoing text message
  const echo = { type: 'text', text: event.message.text };

  // use reply API
  return client.replyMessage(event.replyToken, echo);
}

// listen on port
const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`listening on ${port}`);
});
