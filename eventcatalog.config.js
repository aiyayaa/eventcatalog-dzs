/** @type {import('@eventcatalog/core/bin/eventcatalog.config').Config} */
export default {
  title: 'EventCatalog',
  tagline:
    'DZS event-driven architecture catalog for domains, services, events, and message contracts.',
  organizationName: 'DZS',
  homepageLink: 'https://eventcatalog.dzs-example.smoc.ac.cn/',
  editUrl: '',
  output: 'static',
  trailingSlash: false,
  base: '/',
  navigation: {
    pages: ['list:top-level-domains', 'list:all'],
  },
  logo: {
    alt: 'DZS EventCatalog Logo',
    src: '/logo.png',
    text: 'EventCatalog',
  },
  llmsTxt: {
    enabled: false,
  },
  cId: 'f9255e6a-af97-41dc-9897-057e79f05245',
};