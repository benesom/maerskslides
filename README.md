# maerskslides
Document class for slides with Maersk header

#Installation for Mac users
1. Install Latex distribution (I use TeX Live)
2. Clone/download repo
3. Find TeX home directory with *kpsewhich --var-value TEXMFLOCAL* 
4. cd into TeX home directory and then cd into *tex/latex/local/* or alternatively directly use *cd ~ | cd $(kpsewhich --var-value TEXMFLOCAL)/tex/latex/local*
5. Copy maerskslides/ into directory
6. Run texhash to refresh TeX database
7. Create new .tex file and use slides with *\documentclass{maerskslides}*