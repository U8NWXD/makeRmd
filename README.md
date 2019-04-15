# `makeRmd`: A Makefile for Knitting RMarkdown Files

## Usage

This tool consists mainly of a `Makefile` that should be placed in the
same directory as the RMarkdown (`*.Rmd`) files you wish to knit
(compile). Then, you can run `make [html | pdf | word | default]` while
in that directory. The `html`, `pdf`, and `word` arguments cause output
to be in HTML, PDF, and Word formats, respectively. The `default`
argument causes output to be in whatever formats are specified in the
`output` section of the document header.

The tool also contains a script, `install_makeRmd.sh`. If you place the
repository in your `PATH`, calling the `install_makRmd.sh` command from
any directory will copy the `Makefile` into that directory.

## Legal

Copyright (c) 2019 U8N WXD (https://github.com/U8NWXD)
<cs.temporary@icloud.com>

This tool is makeRmd (https://github.com/U8NWXD/makeRmd).
You may not use this tool except in compliance with the license in
[LICENSE.txt](LICENSE.txt), which can be found at the project link
above. This project comes with ABSOLUTELY NO WARRANTY. See LICENSE.txt 
for details.
