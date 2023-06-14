/** @type {import('tailwindcss').Config} */

function withOpacity(variableName) {
  return ({ opacityValue }) => {
    if (opacityValue !== undefined) {
      return `rgba(var(${variableName}), ${opacityValue})`
    }
    return `rgb(var(${variableName}))`
  }
}


module.exports = {
  content: [
    "./index.html",
    "./lib/es6/**/*.bs.js"
  ],
  theme: {
    extend: {
     colors: {
      primary: "#004f6e",
      secondary: "#228b22",
      primary_tint: "#00ffff",
      secondary_tint: "#98ff98",
      inverse: "#008080"
     }
    },
  },
  plugins: [],
}
