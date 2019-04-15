# Copyright (c) 2019 U8N WXD (github.com/U8NWXD)
# <cs.temporary@icloud.com>
# Adapted from the Sphinx project at sphinx-doc.org (see license at end)

# Knit RMarkdown Files

TOKNIT = test.Rmd
HELPTEXT = "Available arguments are pdf, html, word, and default"

# First so that "make" without argument is like "make help".
help:
	@echo "$(HELPTEXT)"

.PHONY: help Makefile

# Targets to knit various types of files
pdf:
	@Rscript -e "library(rmarkdown); library(utils); render('$(TOKNIT)', 'pdf_document')"

html:
	@Rscript -e "library(rmarkdown); library(utils); render('$(TOKNIT)', 'html_document')"

word:
	@Rscript -e "library(rmarkdown); library(utils); render('$(TOKNIT)', 'word_document')"

default:
	@Rscript -e "library(rmarkdown); library(utils); render('$(TOKNIT)', 'all')"

# For unrecognized arguments, print help text
%: Makefile
	@echo "$(HELPTEXT)"

# Reproduction of license and copyright from Sphinx project:
#
# Copyright (c) 2007-2019 by the Sphinx team (see AUTHORS file).
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
# * Redistributions of source code must retain the above copyright
#   notice, this list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright
#   notice, this list of conditions and the following disclaimer in the
#   documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
