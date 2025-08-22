#let wasm-path = "/typst_simple_icons.wasm"

#let p = plugin(wasm-path)

#let siIcon = (slug: "typst", size: 1em, iconColor: "default") => {
  image(p.simple_icons_slug_colored(bytes(slug), bytes(iconColor)), width: size)
}

#let siTitle = (slug: "typst", size: 1em, textColor: "#000000") => text(
  str(p.simple_icons_title(bytes(slug))),
  size: size,
  fill: rgb(textColor),
)

#let siIconLabel = (slug: "typst", size: 1em, iconColor: "default", textColor: "#000000") => {
  let resolvedTextColor = if textColor == "default" {
    rgb(str(p.simple_icons_color(bytes(slug))))
  } else {
    rgb(textColor)
  }

  grid(
    columns: (auto, auto),
    align: center + horizon,
    gutter: size / 3,
    siIcon(slug: slug, size: size, iconColor: iconColor), siTitle(slug: slug, size: size, textColor: resolvedTextColor),
  )
}

#let siIconRaw = (slug: "typst") => raw(str(p.simple_icons_slug(bytes(slug))), lang: "xml")
