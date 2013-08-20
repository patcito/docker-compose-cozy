#!/bin/bash
HELP="youtuber v0.1\n
Download all videos of a youtuber.\n
\n
To download all videos of a Youtuber, check the videos webpage of the user\n
(https://www.youtube.com/user/<user>/videos) and click on 'Load more' at the\n
bottom of the page as long as you can.\n
Once this is done, save the HTML file and give it as the first argument of\n
this script\n
\n
$> ./youtuber.sh <fichier>.html\n
"
# if [ -z $1 -o $1 == "-h" -o $1 == "--help" ]
if [ $# -eq 0 ] || [ $1 == "-h" ] || [ $1 == "--help" ]
then
	if [ $# -eq 0 ]
	then
		echo -e $HELP
		exit 1
	else
		echo -e $HELP
		exit 0
	fi
fi
for file_url in `grep '/watch' $1 | grep -v 'data-translation-src' | grep -v '^[ \t]*>[ \t]*$' | sed -e 's+^.*href="\(.*\)$+\1+g' -e 's/".*$//g' | grep -v 'class' | grep -v 'watch_later' | uniq`
do
	HASH=`echo $file_url | sed 's/^.*v=//g'`
	youtube-dl -f 22/45/44/35/18/43/34 'https://www.youtube.com/watch?v='$HASH
	EXT=`ls . | grep -- $HASH | sed 's/^.*\.//g'`
	TITLE=`grep '/watch?v='$HASH'">' videos | sed -e 's/^.*title="//g' -e 's/" data-sessionlink.*$//g' -e 's/^[ \t]*//g' -e 's/[ \t]*$//g' -e 's+/+-+g' -e 's/\&amp;/\&/g' -e 's/\&quot;/"/g' -e "s/\&#39;/'/g"`
	mv -- $HASH.$EXT "$TITLE.$EXT"
done
