#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide a project name as an argument"
    exit 1
fi

website="$1"
mkdir "$website"
cd "$website" || exit

mkdir -p assets/images

cat <<EOL > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$website</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <h1>Welcome to $website</h1>
    <p>$website boilerplate has successfully been created! Enjoy vanilla HTML, CSS, and JavaScript</p>

    <script src="script.js"></script>
</body>
</html>
EOL


cat <<EOL > style.css
/* Basic styles for $website */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
EOL

cat <<EOL > script.js
// javascript code here for: $website
console.log("Welcome to $website!");
EOL

echo "$website boilerplate has successfully been created! Enjoy vanilla HTML, CSS, and JavaScript"
