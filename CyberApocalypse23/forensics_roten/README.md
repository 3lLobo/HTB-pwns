# Roten
- Category: forensics
- Difficulty: easy
- Points: 325

> The iMoS is responsible for collecting and analyzing targeting data across various galaxies. The data is collected through their webserver, which is accessible to authorized personnel only. However, the iMoS suspects that their webserver has been compromised, and they are unable to locate the source of the breach. They suspect that some kind of shell has been uploaded, but they are unable to find it. The iMoS have provided you with some network data to analyse, its up to you to save us.

---
The challenge provides a zip file containing a single PCAP file called `challenge.pcap`.
Looking at the PCAP we see a lot of traffic to/from `172.31.9.156 (targetaggregator.intergalacticministry.com)` with most of the traffic being HTTP traffic on port 80. This aligns with the challenge pretext.


Going over the traffic we see a brute-force path scan for `*/galaticmap.php` coming from `146.70.38.48`, which we can assume is the attacker.

At packet `18504`, `18511`, `18524`and `18535` we see requests indicating that the file `/uploads/galactic.map` is most probably a webshell. The shell is used by making a `GET` call with the `cmd` parameter for the command to execute and `dir` parameter for the directory to execute the command in.

Given the shell must have been uploaded, using the wireshark filter `ip.src == 146.70.38.48 && http.request.method == POST` we see 2 post requests:
1. Starting at packet `1571` a form post to http://targetaggregator.intergalacticministry.com/results_display.php with no webshell present.
2. Starting at packet `1929` a multi-part form post to http://targetaggregator.intergalacticministry.com/map-update.php that contains a part with mime-type `application/x-php` for a file called `galacticmap.php`.

This also explains the brute-force scan that was used to determine the path of the upload location.

Carving out the file we are greeted with the PHP file `galacticmap.php` which is obfuscated and uses an `eval` for execution the deobfuscated code. The obfuscation seems to be a rot, but for the easy-mode version we'll just replace `eval` with `print` to get the content.

Running the adjusted file and print out into `webshell.php` we see a simple PHP webshell.
The shell contains a comment containing the flag:

```php
##flag = HTB{W0w_ROt_A_DaY}
```
