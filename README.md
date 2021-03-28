# Markdown template for Journal of Cheminformatics Research papers

This repository contains an experimental Markdown template for
the Research article type. It is able to annotation citations
with the CiTO ontology.

## Requirements

To use this template, you need a [pandoc](https://github.com/jgm/pandoc/releases) installation
(version 2.12 or higher). A `Makefile` is provided to convert
the `article.Rmd` template into a Word `.docx` (default), `.html`, and a PDF file:

```shell
make article.docx
make article.pdf
make article.html
```

Alternatively, RStudio (latst version) can be used with the `article.Rmd` file.

## Selecting the template

The following article types have a template

* [Research article](templates/research_article.Rmd)
* [Software](templates/software.Rmd)

Copy the template into the same folder as this README as `article.Rmd`.

## Writing the article

The template is aimed at the Research article type, and already
contains the required sections. The article is written in the 
Markdown syntax. The template can be used as regular Markdown file, and in RStudio
and it contains in the YAML header instructions which options to
select for either.

A lot of documentation can be found in this [Pandoc Markdown](https://rmarkdown.rstudio.com/authoring_pandoc_markdown.html)
website.


### CiTO support

The template supports CiTO annotation and the template contains
instructions on how to use them.

## Submission to JCheminform.

When the manuscript is finished and ready for submissions, the
PDF and Word outputs both come in handy. The PDF can be used
to submit the manuscript to a preprint server, while the Word
version can be used to submit the manuscript to the journal.

## Acknowledgements

This template would not exist without the work by 
Albert Krewinkel [@kraut0xA](https://twitter.com/kraut0xA).

