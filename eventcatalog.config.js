export default {
  cId: '5b7db671-40d3-4d6a-a8c2-dzs-eventcatalog',
  title: '数据处理与研究支持分系统 EventCatalog',
  tagline: '太空探源专项地面支撑系统数据处理与研究支持分系统接口目录',
  organizationName: '数据处理与研究支持分系统',

  base: '/eventcatalog-dzs',
  output: 'static',
  trailingSlash: true,

  docs: {
    sidebar: {
      type: 'TREE_VIEW',
      showOrphanedMessages: true,
    },
  },

  visualiser: {
    enabled: true,
    channels: {
      renderMode: 'flat',
    },
  },

  llmsTxt: { enabled: true },
};