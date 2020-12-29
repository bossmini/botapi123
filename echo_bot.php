<?php


require_once('./LINEBotTiny.php');

$channelAccessToken = '<1b/t4IVQLQCLe1ABBy1RE+J6KFRINWD3XGf64AS19LEBs1L/xv99/tHqCd3rh9OCs1fGget3+8PJyfT/g0uXwMdqJligbPVz/ooQeg0XeNI8l+tmkHotHLtH7q/0Og27CGjP0vQbbJONfMpDy+kofAdB04t89/1O/w1cDnyilFU=>';
$channelSecret = '<8f9b60f1cc28622e0f998069264a8d3c>';

$client = new LINEBotTiny($channelAccessToken, $channelSecret);
foreach ($client->parseEvents() as $event) {
    switch ($event['type']) {
        case 'message':
            $message = $event['message'];
            switch ($message['type']) {
                case 'text':
                    $client->replyMessage([
                        'replyToken' => $event['replyToken'],
                        'messages' => [
                            [
                                'type' => 'text',
                                'text' => $message['text']
                            ]
                        ]
                    ]);
                    break;
                default:
                    error_log('Unsupported message type: ' . $message['type']);
                    break;
            }
            break;
        default:
            error_log('Unsupported event type: ' . $event['type']);
            break;
    }
};
