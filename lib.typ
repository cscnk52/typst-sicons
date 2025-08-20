#let wasm-path = "wasm/target/wasm32-unknown-unknown/release/typst_simple_icons.wasm"

#let p = plugin(wasm-path)

#let icon = (slug) => {
  image(p.simple_icons(bytes(slug)))
}

// #let icon-raw = (slug) => raw(str(p.simple_icons(slug)), lang: "xml")

// #let icon-bytes = (slug) => p.simple_icons(slug)
