#!/bin/bash

# Download scoresheet PDFs from BSM-Server
# wget -r -np https://bsm.baseball-softball.de/matches/30278/combined_scoresheets/Spiel-10120103-1.pdf -O /input/  #1BLHS
#             https://bsm.baseball-softball.de/matches/30842/combined_scoresheets/Spiel-10420201-1.pdf             #BLDS
#                                                      3xxxx = random match number?!  
#                                                      automatted downloading won't work => download shit manually from bbsv.de or rewrite to read from API's JSONs!


# loop through all downloaded PDFs in "input" folder
for file in input/*.pdf
do
	echo ${file}
		#TODO: read the f*cking documentation to get sh*t done: https://imagemagick.org/script/convert.php
		#                                                left,top      right,bottom
		#convert -density 600 ${file} -quality 100 -crop +2513+960 -crop -1732-1527 ./output/$(basename "$file").jpg    #density=DPI // -trim ist unvorhersehbar
		#                                                for image size of ca 7200x 
		convert -density 600 ${file} -quality 100 ./output/$(basename "$file").jpg
	#convert ./output/Spiel*.jpg -crop 10x9@ ./output/tile-%d.jpg
		
done
echo "Done."
