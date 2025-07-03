# 🧠 Codility 模拟题集 for LY Corporation（Swift）

共计 5 题，建议总时间 200 分钟。题型结合了字符串、数据结构、滑动窗口与工程实战设计。

---

## ✅ 第 1 题：`FirstUniqueCharacter`

**类型**：字符串处理 + 字典计数
**推荐时间**：20 分钟
**难度**：★☆☆☆☆

**描述**：
给定一个字符串，返回第一个只出现一次的字符的索引。如果不存在，返回 -1。

```swift
func firstUniqueIndex(_ s: String) -> Int
```

**示例**：
```swift
Input: "leetcode"
Output: 0

Input: "loveleetcode"
Output: 2

Input: "aabb"
Output: -1
```

---

## ✅ 第 2 题：`MergeIntervalMap`

**类型**：映射 + 区间合并
**推荐时间**：35 分钟
**难度**：★★☆☆☆

**描述**：
给定一个字典 `[String: [[Int]]]`，表示多个 label 对应的一组区间（闭区间），请合并每个 label 下的重叠区间，返回相同结构的新字典。

```swift
func mergeLabeledIntervals(_ input: [String: [[Int]]]) -> [String: [[Int]]]
```

**示例**：
```swift
Input:
[
  "a": [[1,3],[2,5],[8,10]],
  "b": [[0,1],[1,3]]
]

Output:
[
  "a": [[1,5],[8,10]],
  "b": [[0,3]]
]
```

---

## ✅ 第 3 题：`MessageReducer`

**类型**：栈模拟 + 工程场景
**推荐时间**：45 分钟
**难度**：★★★☆☆

**描述**：
LINE 的聊天服务器接收字符流，其中包含退格符 `#`，代表删除前一个字符。请模拟字符删除操作，并输出最终字符串。

```swift
func reduceMessage(_ input: String) -> String
```

**示例**：
```swift
Input: "abc#d##c"
Output: "ac"

Input: "abc##de##f#"
Output: "a"
```

---

## ✅ 第 4 题：`RateLimiter`

**类型**：数据结构设计 + 时间滑窗 + 实战型
**推荐时间**：50 分钟
**难度**：★★★★☆

**描述**：
实现一个 Rate Limiter（速率限制器），支持以下操作：

```swift
class RateLimiter {
    init(limit: Int, windowSize: Int) // 每 windowSize 秒最多 limit 次

    func shouldAllow(timestamp: Int) -> Bool
}
```

- 所有 timestamp 为秒数（递增调用）。
- 若该 timestamp 所在窗口内请求超过 limit，则返回 false。

**示例：**
```swift
let limiter = RateLimiter(limit: 3, windowSize: 10)
limiter.shouldAllow(1)   // true
limiter.shouldAllow(2)   // true
limiter.shouldAllow(3)   // true
limiter.shouldAllow(4)   // false
limiter.shouldAllow(11)  // true  (window [2,11])
```

---

## ✅ 第 5 题：`CompactPath`

**类型**：字符串解析 + 路径压缩（工程题建模）
**推荐时间**：50 分钟
**难度**：★★★★☆

**描述**：
实现一个函数，将路径字符串（可能含 `.`、`..`、重复斜杠）规整为简洁形式。

```swift
func simplifyPath(_ path: String) -> String
```

**示例：**
```swift
Input: "/home/"
Output: "/home"

Input: "/a/./b/../../c/"
Output: "/c"

Input: "/../"
Output: "/"
```

---

## 🗂 题集回顾与覆盖目标

| 题号 | 名称                  | 类型                  | Swift 特点考点          |
|------|-----------------------|-----------------------|--------------------------|
| 1    | FirstUniqueCharacter  | 字符串 + 字典计数     | 字符遍历 + 字典操作       |
| 2    | MergeIntervalMap      | 映射结构 + 区间合并   | 字典排序 + 合并区间       |
| 3    | MessageReducer        | 状态模拟 + 栈         | 栈结构 + 字符串操作       |
| 4    | RateLimiter           | 滑窗 + 数据结构设计   | 类封装 + 队列管理         |
| 5    | CompactPath           | 字符串解析 + 栈       | 字符串切分 + 状态还原     |
