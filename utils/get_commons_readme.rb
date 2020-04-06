require 'open-uri'

full_readme = open('https://raw.githubusercontent.com/AbsaOSS/commons/master/README.md').read
readme_without_header = full_readme.split("\n")[2..-1].join("\n")

gh_pages_header = "---\n" +
                  "layout: default\n" +
                  "title: ABSA Commons\n" +
                  "---\n\n"

new_readme = gh_pages_header + readme_without_header

File.write "#{__dir__}/../commons.md", new_readme
