#!/usr/bin/env bash

echo "
<html>
  <style>
    * {  margin: 0; padding: 0; }
    body { padding-top: 30px; color: rgba(255, 255, 255, 0.5); font-family: 'Avenir'; font-size: 16px; font-weight: 500; }
    small { font-size: 8px; position: relative; top: -0.5em; }
    div { display: flex; align-items: center; padding: 2px 0 2px 2px; margin: 0 0 2px; border-bottom: 1px solid rgba(255, 255, 255, 0.25); }
    div:last-child { border-bottom: 0; }
    em { font-style: normal; color: rgba(255, 255, 255, 0.9); font-weight: 600; text-shadow: 0 0 2px rgba(0, 0, 0, 0.5); }
    span { width: 14px; text-align: center; margin: 0 10px 0 0; font-size: 14px; }
    strong { font-size: 10px; margin: 0 0 0 8px; opacity: 0.85; }
    h3 { color: white; opacity: 0.9; }
  </style>
  <body>

<h3>Things:</h3>
<br/>
"

/usr/local/bin/things.sh today | awk -F'|' '{print "<div style=\"opacity: 0.9\"><span><img src=\"https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes/128/check-square-blue-512.png\" height=16 /></span> <em>"$2"</em><strong>"$1"</strong></div>"}'

echo "
  </body>
</html>
"

exit 0