SHELL := bash

doc:
	docker run --rm -it -v d:/temp/Deep-Learning-For-Hackers:/data datasciencetoolbox/dsatcl2e

aug:
	(echo "text,label" && cat testUn.csv trainUn.csv) > aug.csv

att: aug.csv
	textattack augment --csv $< --input-column text --recipe eda --pct-words-to-swap .30 --transformations-per-example 50 --overwrite

delHeader:
	sed -e '1d' augment.csv

tr:
	a="sed -e '1d' augment.csv"
	cat train.csv $$a > train2.csv

te:
	cat test.csv testUn.csv > test2.csv

