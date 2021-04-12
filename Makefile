doc:
	docker run --rm -it -v d:/temp/Deep-Learning-For-Hackers:/data datasciencetoolbox/dsatcl2e

tr:
	cat train.csv trainUn.csv > train2.csv

te:
	cat test.csv testUn.csv > test2.csv