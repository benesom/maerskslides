# maerskslides
Document class for Latex slides with Maersk header. The maerskslides class is based on the beamer class. 

# Installation for Mac users
1. Install Latex distribution (I use TeX Live)
2. Clone/download repo
3. Find TeX home directory with `kpsewhich --var-value TEXMFLOCAL` 
4. cd into TeX home directory and then cd into `tex/latex/local/` or alternatively directly use `cd ~ | cd $(kpsewhich --var-value TEXMFLOCAL)/tex/latex/local`
5. Copy maerskslides/ into directory
6. Run `sudo texhash` to refresh TeX database
7. The class can be then used with `\documentclass{maerskslides}`
