# 数据处理与研究支持分系统 EventCatalog

本目录已按确认规则清理接口标识，并生成 EventCatalog 资源文件。

## 目录结构

```text
domains/dzs/index.mdx
services/<service-id>/index.mdx
commands/<interface-id>/index.mdx
channels/<channel-id>/index.mdx
containers/<container-id>/index.mdx
docs/清洗说明/index.mdx
eventcatalog.config.js
catalog-inventory.json
```

## 统计

| 项 | 数量 |
| --- | ---: |
| 原始接口关系表行数 | 714 |
| 去重后接口数 / commands | 385 |
| services | 39 |
| channels | 9 |
| containers | 73 |
| TBD/TBC badge | 51 |

## 使用方式

把本目录内容复制到 EventCatalog 项目根目录，或将其中的 `domains`、`services`、`commands`、`channels`、`containers`、`docs` 复制进现有项目。

所有资源的 `repository.language` 已统一为 `zh-CN`。
