#let simple-icons = name => {
  if (name == "") {
    emph("Icon name cannot be empty.")
  } else {
    let path = "simple-icons/icons/" + name + ".svg"
    image(path)
  }
};
