module=$1

content=$(cat <<END
declare module '$module' {
  declare module.exports: any
}
END)

echo "$content" > flow-typed/$module.js
