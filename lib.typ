#let simple-icons = (name) => {
  let path = "icons/" + name + ".svg";
  if (exists(path)) {
    image(path)
  } else {
    emph("Icon not found: " + name)
  }
};
