# srcf = template.tex details_fr.yml details.yml
srce = template.tex details_eng.yml details.yml
FLAGS = --pdf-engine=xelatex
pdfe = CV_mhbrice_eng.pdf
# pdff = CV_mhbrice_fr.pdf

$(pdfe) : $(srce)
		pandoc $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

# $(pdff) : $(srcf)
# 		pandoc $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

clean :
	rm $(pdfe) # $(pdff)
