## HTML tools for scraping

from std/xmltree import findAll, attr, XmlNode, innerText
export findAll, attr, innerText
from std/htmlparser import parseHtml
export parseHtml

from std/strutils import strip

from pkg/findxml/findAll import findAll
export findAll

func text*(node: XmlNode): string =
  ## Usage:
  ## .. code-block:: nim
  ##   # Get striped innerText from XmlNode
  ##   html.findAll("a")[0].text
  strip innerText node

func text*(nodes: seq[XmlNode]): string =
  ## Usage:
  ## .. code-block:: nim
  ##   # Get innerText from first `a` in `html`, if exists.
  ##   html.findAll("a").text
  if nodes.len > 0:
    result = nodes[0].text

func attr*(nodes: seq[XmlNode]; name: string): string =
  ## Usage:
  ## .. code-block:: nim
  ##   # Get attr `href` from first `a` in `html`, if exists.
  ##   html.findAll("a").attr "href"
  if nodes.len > 0:
    result = nodes[0].attr name
