# 批量创建 EventCatalog data store / container 文件
# 目录结构：
# containers/<id>/index.md

$items = @(
    @{ id="ty-data-store-id-01"; name="实时数传原始数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-02"; name="事后数传原始数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-03"; name="遥测原始数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-04"; name="探路者一号A星高速遥测数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-05"; name="数据传输完成通知（实时数传原始数据、事后数传原始数据、遥测原始数据、探路者一号A星高速遥测数据）"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-06"; name="事后数传数据质量信息"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-07"; name="任务订单（预处理）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-08"; name="数传原始数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-09"; name="遥测原始数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-10"; name="辅助数据（OI、OL、OA、TE、OEM）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-11"; name="编辑级数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-12"; name="探路者一号A星高速遥测数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-13"; name="任务完成通知（预处理）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-14"; name="编辑级数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-15"; name="事后数传数据质量信息"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-16"; name="辅助数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-17"; name="快视数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-18"; name="原始数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-19"; name="编辑级数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-20"; name="辅助数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-21"; name="数据同步清单（原始数据产品、编辑级数据产品、辅助数据产品）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-22"; name="数据文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-23"; name="数据出库完成通知"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-24"; name="快视数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-25"; name="辅助数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-26"; name="数据传输完成通知（辅助数据）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-27"; name="空间环境数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-28"; name="空间环境数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-29"; name="空间环境数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-30"; name="数据产品分发请求（空间环境数据，一个获取批次一个）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-31"; name="数据文件清单（辅助文件、批次汇交数据文件）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-32"; name="核心元数据文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-33"; name="辅助文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-34"; name="学科元数据文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-35"; name="元数据模板"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-36"; name="数据实体出库完成通知"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-37"; name="数据文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-38"; name="数据出库完成通知"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-39"; name="数据集信息"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-40"; name="数据文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-41"; name="数据出库完成通知"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-42"; name="元数据模板"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-43"; name="数据实体"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-44"; name="数据实体存储清单"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-45"; name="数据实体存储结果清单"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-46"; name="数据实体出库完成通知"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-47"; name="运控归档数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-48"; name="运控归档文件传输完成通知"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-49"; name="标定级数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-50"; name="归档数据清单"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-51"; name="任务完成通知（标定级产品审核）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-52"; name="数据判读结果"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-53"; name="原始数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-54"; name="编辑级数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-55"; name="辅助数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-56"; name="归档数据清单（原始、编辑级、辅助数据产品）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-57"; name="原始数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-58"; name="编辑级数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-59"; name="辅助数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-60"; name="运控归档数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-61"; name="标定级数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-62"; name="辅助文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-63"; name="核心元数据文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-64"; name="学科元数据文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-65"; name="数据文件入库清单"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-66"; name="元数据文件"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-67"; name="数据文件入库清单结果反馈"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-68"; name="数据实体存储结果清单"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-69"; name="数据实体出库完成通知"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-70"; name="数据实体"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-71"; name="数据实体存储清单"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-72"; name="数据实体"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-73"; name="数据实体存储结果清单"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-74"; name="数据实体"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-75"; name="数据实体存储清单"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-76"; name="数据实体"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-77"; name="数据实体"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-78"; name="编辑级数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-79"; name="辅助数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-80"; name="数据产品分发请求（编辑级数据产品、辅助数据产品）"; version="1.0.0"; summary='""'; container_type="cache"; classification="internal" },
    @{ id="ty-data-store-id-81"; name="编辑级数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-82"; name="辅助数据产品"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-83"; name="空间环境数据"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" },
    @{ id="ty-data-store-id-84"; name="数据产品分发清单（编辑级数据产品、辅助数据产品、空间环境数据）"; version="1.0.0"; summary='""'; container_type="cache"; classification="external" }
)

$rootDir = Get-Location
$containersDir = Join-Path $rootDir "containers"

if (-not (Test-Path $containersDir)) {
    New-Item -ItemType Directory -Path $containersDir | Out-Null
}

foreach ($item in $items) {
    $itemDir = Join-Path $containersDir $item.id
    if (-not (Test-Path $itemDir)) {
        New-Item -ItemType Directory -Path $itemDir | Out-Null
    }

    $filePath = Join-Path $itemDir "index.mdx"

    $content = @"
---
id: $($item.id)
name: $($item.name)
version: $($item.version)
summary: $($item.summary)
container:
  type: $($item.container_type)
classification: $($item.classification)
---
"@

    Set-Content -Path $filePath -Value $content -Encoding UTF8
    Write-Host "Created: $filePath"
}

Write-Host ""
Write-Host "All container files created under: $containersDir"