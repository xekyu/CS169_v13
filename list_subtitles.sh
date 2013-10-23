#!/bin/bash

WEBSITE="http://s3.amazonaws.com/BESTech/CS169/srt/"
FILE="CS169_v13_w2l1s1.mp4.srt"

i=3

while [ `curl --silent --head --location --output /dev/null --write-out '%{http_code}' $WEBSITE$FILE | grep '^2'` ]; do
	j=2
	while [ `curl --silent --head --location --output /dev/null --write-out '%{http_code}' $WEBSITE$FILE | grep '^2'` ]; do
		k=2
		while [ `curl --silent --head --location --output /dev/null --write-out '%{http_code}' $WEBSITE$FILE | grep '^2'` ]; do
			echo $WEBSITE$FILE
			FILE=$(sed "s/s[0-9][0-9]*/s$k/" <<< $FILE)

			let k++
		done
		FILE=$(sed "s/s[0-9][0-9]*/s1/" <<< $FILE)
		FILE=$(sed "s/l[0-9][0-9]*/l$j/" <<< $FILE)

		let j++
	done
	FILE=$(sed "s/l[0-9][0-9]*/l1/" <<< $FILE)
	FILE=$(sed "s/w[0-9][0-9]*/w$i/" <<< $FILE)

	let i++
done
