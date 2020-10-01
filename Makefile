# Sciquill configuration ------------------------------------------------------
# sqdir - points to your sciquill repository
# sqtype - sciquill media type: 'manuscript', 'cv', or 'grant'
# then, include sciquill.make for default recipes and variables

sqdir = ${SQDIR}
sqtype = sqmanuscript
include $(sqdir)/sciquill.make


# User overrides ---------------------------------------------------------------
#csl = ${CODEBASE}styles/bioinformatics.csl
#csl = ${CODEBASE}mediabuilder/csl/compact.csl
#csl = ${CODEBASE}mediabuilder/csl/nature.csl
textemplate = $(sqdir)/tex_templates/manuscript.tex
lettertemplate="$(sqdir)/tex_templates/manuscript.tex"

.DEFAULT_GOAL := two

two: manuscript cover_letter
