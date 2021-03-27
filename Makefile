all: article.docx

clean:
	@rm -f article.docx article.pdf article.html *.orig .Rhistory

article.pdf: article.Rmd bibliography.bib \
		filters/insert-cito-in-ref.lua \
		filters/extract-cito.lua
	# docker run --rm -t -v "${PWD}":/data -u $(id -u):$(id -g) pandoc/core:2.12 \
	pandoc \
	    --from=markdown \
	    --to=pdf \
	    --lua-filter=filters/extract-cito.lua \
	    --citeproc \
	    --lua-filter=filters/insert-cito-in-ref.lua \
	    --csl=journal-of-cheminformatics.csl \
	    --output=$@ \
	    $<

article.docx: article.Rmd bibliography.bib \
		filters/insert-cito-in-ref.lua \
		filters/extract-cito.lua
	# docker run --rm -t -v "${PWD}":/data -u $(id -u):$(id -g) pandoc/core:2.12 \
	pandoc \
	    --from=markdown \
	    --to=docx \
	    --lua-filter=filters/extract-cito.lua \
	    --citeproc \
	    --lua-filter=filters/insert-cito-in-ref.lua \
	    --csl=journal-of-cheminformatics.csl \
	    --output=$@ \
	    $<

article.html: article.Rmd bibliography.bib \
                filters/insert-cito-in-ref.lua \
                filters/extract-cito.lua
	# docker run --rm -t -v "${PWD}":/data -u $(id -u):$(id -g) pandoc/core:2.12 \
	pandoc \
	    --from=markdown \
	    --to=html \
	    --lua-filter=filters/extract-cito.lua \
	    --citeproc \
	    --lua-filter=filters/insert-cito-in-ref.lua \
	    --csl=journal-of-cheminformatics.csl \
	    --output=$@ \
	    $<

