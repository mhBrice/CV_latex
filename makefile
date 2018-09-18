# srcf = template.tex details_fr.yml details.yml
srce = template.tex details_eng.yml details.yml
FLAGS = --pdf-engine=xelatex
pdfe = CV_mhbrice_eng.pdf
# pdff = CV_mhbrice_fr.pdf

$(pdfe) : $(srce)
		pandoc $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

# $(pdff) : $(srcf)
# 		pandoc $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)
# getpubli:

# towebsite:
# 	zip CV_KevCaz_eng.zip CV_KevCaz_eng.pdf
# 	zip CV_KevCaz_fr.zip CV_KevCaz_fr.pdf
# 	cp publi.yml ~/Github/Websites/kevcaz.github.io/data/publi.yaml
# 	cp *.pdf ~/Github/Websites/kevcaz.github.io/static/pdf
# 	cp *.zip ~/Github/Websites/kevcaz.github.io/static/zip
# 	rm *.zip
#
clean :
	rm $(pdfe) # $(pdff)
