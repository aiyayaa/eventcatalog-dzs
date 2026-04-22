$ErrorActionPreference = "Stop"

# 在 EventCatalog 项目根目录执行本脚本
$rootDir = Get-Location
$containersDir = Join-Path $rootDir "containers"

if (-not (Test-Path $containersDir)) {
    New-Item -ItemType Directory -Path $containersDir | Out-Null
}

# 数据清单：id<TAB>name<TAB>version<TAB>summary<TAB>container_type<TAB>classification
$data = @'
ty-data-store-db-id-01	任务信息查询结果	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-02	产品版本信息查询结果	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-03	产品版本信息查询请求	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-04	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-05	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-06	卫星任务信息（轨道数据、计划等）	1.0.0		cache	postgres@14	external
ty-data-store-db-id-07	产品统计信息	1.0.0		cache	postgres@14	external
ty-data-store-db-id-08	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-09	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-10	词表数据	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-11	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-12	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-13	词表数据	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-14	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-15	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-16	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-17	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-18	数据实体信息	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-19	数据实体备份信息	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-20	数据实体恢复状态信息	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-21	数据实体信息	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-22	数据实体灾备信息	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-23	数据实体回迁状态信息	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-24	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-25	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-26	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-27	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-28	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-29	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-30	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-31	日志信息检索请求（流程信息、心跳信息、异常信息）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-32	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-33	日志信息检索结果（流程信息、心跳信息、异常信息）日志信息	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-34	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-35	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-36	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-37	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-38	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-39	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-40	数据检索请求反馈（系统参数）	1.0.0		cache	postgres@14	internal
ty-data-store-db-id-41	数据检索请求（系统参数）	1.0.0		cache	postgres@14	internal
'@

$lines = $data -split "`r?`n" | Where-Object { $_.Trim() -ne "" }

foreach ($line in $lines) {
    $parts = $line -split "`t", 6
    if ($parts.Count -ne 6) {
        throw "数据行格式错误：$line"
    }

    $id = $parts[0].Trim()
    $name = $parts[1].Trim()
    $version = $parts[2].Trim()
    $summary = $parts[3].Trim()
    $containerType = $parts[4].Trim()
    $classification = $parts[5].Trim()

    $itemDir = Join-Path $containersDir $id
    if (-not (Test-Path $itemDir)) {
        New-Item -ItemType Directory -Path $itemDir | Out-Null
    }

    $filePath = Join-Path $itemDir "index.md"

    $frontmatter = @"
---
id: $id
name: $name
version: $version
summary: "$summary"
container:
  type: $containerType
classification: $classification
---
"@

    [System.IO.File]::WriteAllText($filePath, $frontmatter, [System.Text.UTF8Encoding]::new($false))
    Write-Host "Created: $filePath"
}

Write-Host ""
Write-Host "All files created under: $containersDir"