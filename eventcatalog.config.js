/** @type {import('@eventcatalog/core/bin/eventcatalog.config').Config} */

const repoName = 'eventcatalog-dzs';
const customDomain = 'eventcatalog.dzs-example.smoc.ac.cn';

const repoUrl = process.env.GITHUB_PAGES === 'true' || process.env.GITHUB_ACTIONS === 'true'
  ? process.env.GITHUB_REPOSITORY || ''
  : '';

const isRepoPagesPreview =
  (process.env.USE_GITHUB_REPO_BASE === 'true') ||
  (repoUrl.endsWith(`/${repoName}`) && process.env.USE_CUSTOM_DOMAIN !== 'true');

export default {
  title: 'EventCatalog',
  tagline:
    'DZS event-driven architecture catalog for domains, services, events, and message contracts.',
  organizationName: 'DZS',
  homepageLink: `https://${customDomain}/`,
  editUrl: '',
  output: 'static',
  trailingSlash: false,
  base: isRepoPagesPreview ? `/${repoName}/` : '/',
  navigation: {
    pages: ['list:top-level-domains', 'list:all'],
  },
  logo: {
    alt: 'DZS EventCatalog Logo',
    src: isRepoPagesPreview ? `/${repoName}/logo.png` : '/logo.png',
    text: 'EventCatalog',
  },
  llmsTxt: {
    enabled: false,
  },
  cId: 'f9255e6a-af97-41dc-9897-057e79f05245',
};