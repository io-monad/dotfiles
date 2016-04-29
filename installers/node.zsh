node_modules=(
  "bower"
  "coffee-script"
  "cson-cli"
  "documentation"
  "esdoc"
  "esdoc-es7-plugin"
  "eslint"
  "eslint-config-airbnb"
  "eslint-config-google"
  "eslint-plugin-import"
  "eslint-plugin-jsx-a11y"
  "eslint-plugin-react"
  "greenkeeper"
  "gulp"
  "jsdoc"
  "jshint"
  "mocha"
  "node-inspector"
  "npm-check-updates"
  "sort-package-json"
  "testem"
  "textlint"
  "yo"
)

function install_node {
  mkdir -p ~/.nodebrew/src
  nodebrew install-binary stable
  nodebrew use stable
  nodebrew alias default stable
  npm install -g $node_modules
}

function update_node {
  nodebrew install-binary stable || true
  nodebrew use stable
  nodebrew alias default stable
  npm install -g npm $node_modules
}

installers+=(node)
