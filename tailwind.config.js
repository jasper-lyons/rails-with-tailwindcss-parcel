module.exports = {
  purge: [
    'config.ru',
    'app/**/*.rb',
    'app/**/*.html.erb',
    'app/assets/javascript/*.js'
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
