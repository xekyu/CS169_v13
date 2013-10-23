CS169_v13
=========

Script to download all videos for Berkeley CS169.

Quick Download
==============

On Linux, from the directory you would like to download the videos to, type

```
wget https://raw.github.com/xekyu/CS169_v13/master/CS169_v13.txt
wget -N -i CS169_v13.txt
```
For subtitles (through week 3 as of Oct. 23),

```
wget https://raw.github.com/xekyu/CS169_v13/master/CS169_v13_subtitles.txt
wget -N -i CS169_v13_subtitles.txt
```

Details
=======
`list_videos.sh` generates list of all video urls by observing they end in `w[0-9]+l[0-9]+s[0-9]+.mp4` (e.g. `w1l1s1.mp4`). It increments these numbers until the link does not exist (i.e. returns the http code `404`), enumerating all valid links.

`CS169_v13.txt` collects this output, which can be passed to `wget`.

The subtitle links were indentically generated in their respective files. The naming convention here switches between `.srt` and `.mp4.srt` between week 1 and 2.
