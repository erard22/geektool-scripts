#!/usr/bin/env bash

echo "
<html>
  <style>
    * {  margin: 0; padding: 0; }
    body { padding-top: 30px; color: rgba(255, 255, 255, 0.5); font-family: 'Avenir'; font-size: 16px; font-weight: 500; }
    small { font-size: 8px; position: relative; top: -0.5em; }
    td { align-items: left; padding: 2px 20px 2px 2px; margin: 0 0 2px; border-bottom: 1px solid rgba(255, 255, 255, 0.25);}
    tr { }
    div:last-child { border-bottom: 0; }
    em { font-style: normal; color: rgba(255, 255, 255, 0.9); font-weight: 600; text-shadow: 0 0 2px rgba(0, 0, 0, 0.5); }
    strong { font-size: 10px; margin: 0 0 0 8px; opacity: 0.85; }
    h3 { color: white; opacity: 0.9; }
  </style>
  <body>

<h3>Docker:</h3>
<br/>
<table>
"

/usr/local/bin/docker ps --format '{{.Names}}|{{.Image}}|{{.Status}}|{{.Size}}' | awk -F'|' '{print "<tr style=\"opacity: 0.9\"><td><em>"$1"</em></td><td>"$2"</span></td><td><strong>"$3"</strong><strong>("$4")</strong><td></tr>"}'

echo "
</table>
  </body>
</html>
"

exit 0
