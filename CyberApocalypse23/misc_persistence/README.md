# Persistence
Category: misc
Difficulty: very easy
Points: 325

> Thousands of years ago, sending a GET request to /flag would grant immense power and wisdom. Now it's broken and usually returns random data, but keep trying, and you might get lucky... Legends say it works once every 1000 tries.
---

# Flag

Premise is easy: spin up the docker container, call `/flag` repeatedly having either a 0.1% chance to get that flag or receiving it on call number 1000.

Let's just use a bash loop call the end-point 2000 times and grep for the flag starting with `HTB`

```shell
for i in $(seq 1 2000); do;  curl -s http://165.232.98.82:31912/flag | grep -i HTB ; done
```

This gives us the flag `HTB{y0u_h4v3_p0w3rfuL_sCr1pt1ng_ab1lit13S!}`

I never bothered to figure out if it was a 0.1% chance or the 1000th call, especially for a 10 second challenge.