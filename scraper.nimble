# Package

version       = "0.1.0"
author        = "Thiago Navarro"
description   = "Scraping tools"
license       = "MIT"
srcDir        = "src"

# Dependencies

requires "nim >= 1.0.0"
requires "https://github.com/thisago/findxml"

task gen_docs, "Generates the documentation":
  exec "nim doc --project --out:docs src/scraper.nim"
