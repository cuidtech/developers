/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    screens: {
      sm: '480px',
      md: '768px',
      lg: '976px',
      xl: '1440px',
    },
    colors: {
      'blue-dark': '#2526A9',
      'blue-light': '#9BABE2',
      'gray-light': '#efefef',
      'white': '#FFFFFF',
    },
    fontFamily: {
      sans: ['Arial', 'sans-serif']
    },
    container: {
      center: true,
    },
    extend: {
      spacing: {
        '128': '32rem',
        '144': '36rem',
      },
      borderRadius: {
        '4xl': '2rem',
      },
    }
  },
  plugins: [],
}
