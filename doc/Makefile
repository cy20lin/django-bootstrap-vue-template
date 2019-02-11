# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXAUTOBUILD = sphinx-autobuild
SOURCEDIR     = .
BUILDDIR      = _build
GIT           = git

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# NOTE:
# sphinx-autobuild seems not respect the way that sphinx-build does.
# you have to explicit specify subdirectory html in BUILDDIR in order to
# actually generate html document in that place. wired.
# TODO:
# Test on new version of sphinx-autobuild and report this issue.
livehtml:
	@$(SPHINXAUTOBUILD) "$(SOURCEDIR)" "$(BUILDDIR)/html" -b html -i ".#*" $(SPHINXOPTS) $(O)

deploy-gh-pages:
	sh ./_script/deploy-gh-pages.sh

deploy:
	sh ./_script/deploy-gh-pages.sh

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
