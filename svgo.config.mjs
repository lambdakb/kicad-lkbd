export default {
  multipass: false,
  js2svg: {
    indent: 4,
    pretty: true,
  },
  plugins: [
    {
      name: 'preset-default',
      params: {
        overrides: {
          removeViewBox: false,
        },
      },
    },
    {
      name: 'removeDesc',
      params: {
        removeAny: true,
      },
    },
  ],
}
