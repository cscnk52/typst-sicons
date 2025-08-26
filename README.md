<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://github.com/cscnk52/sicons/raw/refs/heads/main/assets/img/typst-dark.png" />
  <source media="(prefers-color-scheme: light)" srcset="https://github.com/cscnk52/sicons/raw/refs/heads/main/assets/img/typst-light.png" />
  <img alt="simpleicons-rs banner" src="https://github.com/cscnk52/sicons/raw/refs/heads/main/assets/img/typst-light.png" />
</picture>

<div align="center">

# sicons

Access High quality Simple Icons SVGs from Typst.

</div>

## Usage

```typst
#import "/src/lib.typ": *

= Simple Icons Typst plugin Example

#sIcon(slug: "typst", size: 3em)

#sTitle(slug: "typst", size: 3em)

#sIconLabel(slug: "simpleicons", size: 6em)

#sIconRaw(slug: "typst")
```

Output like this:

![](/test/test.svg)
