srcf = template.tex details_fr.yml details.yml
srce = template.tex details_eng.yml details.yml
FLAGS = --pdf-engine=xelatex
pdfe = CV_mhbrice_eng.pdf
pdff = CV_mhbrice_fr.pdf


all: $(pdfe) $(pdff)

fr: $(srcf)
	pandoc $(filter-out $<,$^ ) -o $(pdff) --template=$< $(FLAGS)

en : $(srce)
	pandoc $(filter-out $<,$^ ) -o $(pdfe) --template=$< $(FLAGS)

clean :
	rm $(pdfe) $(pdff)
