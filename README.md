# my_windows_nvim_config
这个仓库记录了我在windows系统下的neovim的所有配置，采用lua语言进行配置。



## 常用快捷键

### 基础快捷键（加粗常用）

| 快捷键               | 模式          | 功能                                     |
| -------------------- | ------------- | ---------------------------------------- |
| **jk**               | **insert**    | **退出插入模式**                         |
| R                    | normal        | 执行当前lua文件（在配置时使用）          |
| **S**                | **normal**    | **保存文件**                             |
| **Q**                | **normal**    | **退出文件**                             |
| zo                   | normal        | 展开折叠                                 |
| zc                   | normal        | 合拢折叠                                 |
| <space>nh           | normal        | 取消搜索高亮                             |
| r                    | normal        | 编译并执行当前代码文件（python、c、c++） |
| **<F8>**             | **normal**    | **打开代码文件大纲**                     |
| <space><tab>        | normal/visual | 自动对齐输入字符                         |
| **<space>c<space>** | **normal**    | **自动注释/取消注释**                    |
| **<space>y**        | **normal**    | **显示剪切板历史**                       |
| **<space>ff**       | **normal**    | **快速文件查找**                         |
| <space>fg           | normal        | 快速内容查找                             |



### 光标移动（全部常用）

| 快捷键 | 模式          | 功能                 |
| ------ | ------------- | -------------------- |
| K      | normal/visual | 快速上移（每次十行） |
| J      | normal/visual | 快速下移（每次十行） |
| M      | normal        | 光标移动至行尾       |
| 0      | normal        | 光标移动至行首       |
| gg     | normal        | 光标移动至首行       |
| G      | normal        | 光标移动至文档末尾   |
| L      | normal        | 移动至右侧buffer     |
| H      | normal        | 移动至左侧buffer     |
| <C-h>  | normal        | 移动至左侧窗格       |
| <C-l>  | normal        | 移动至右侧窗格       |
| <C-f>  | all           | 浮窗内容向下滚动     |
| <C-b>  | all           | 浮窗内容向上移动     |



### 窗口控制（加粗常用）

| 快捷键         | 模式       | 功能             |
| -------------- | ---------- | ---------------- |
| **<space>sv** | **normal** | **水平新建窗口** |
| <space>sh     | normal     | 垂直新建窗口     |
| **<space> =** | **normal** | **窗口大小+5**   |
| **<space> -** | **normal** | **窗口大小-5**   |
| <space>tt     | normal     | 增加新buffer页   |



### 插件快捷键（加粗常用）

#### 文件管理nvim-tree

| 快捷键        | 模式       | 功能                                  |
| ------------- | ---------- | ------------------------------------- |
| **<space>e** | **normal** | **打开/关闭nvim-tree**                |
| **<tab>**     | **normal** | **打开/关闭当前文件夹或预览当前文件** |
| m             | normal     | 增加书签                              |
| <space>mn    | normal     | 打开下一个书签页面                    |
| <space>mp    | normal     | 打开上一个书签页面                    |

#### 撤销记录管理 undo-tree

| 快捷键        | 模式       | 功能              |
| ------------- | ---------- | ----------------- |
| **<space>u** | **normal** | **打开undo-tree** |
| q             | normal     | 退出              |

#### 代码补全、诊断、跳转、重构、修复神器 coc

| 快捷键         | 模式              | 功能                           |
| -------------- | ----------------- | ------------------------------ |
| **<tab>**      | **insert**        | **选中下一个自动补全提示**     |
| **<S-tab>**    | **insert**        | **选中上一个自动补全提示**     |
| **<CR>**       | **insert**        | **选择当前自动补全提示并插入** |
| ]g / [g        | normal            | 前往下一个诊断                 |
| **gd**         | **normal**        | **跳转到定义**                 |
| **gr**         | **normal**        | **跳转到引用**                 |
| **<space>rn** | **normal**        | **智能重命名**                 |
| **<space>F**  | **normal/visual** | **选中部分格式规范化**         |
| <space>a      | normal            | 光标处Code Action              |
| <space>ac     | normal            | 当前buffer Code Action         |
| <space>qf     | normal            | 快速修复                       |
| <space>re     | normal            | 代码重构                       |

