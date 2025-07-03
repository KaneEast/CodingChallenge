# 🧠 Codility 模拟题集 for LY Corporation（Swift）– 第2套

共计 5 题，预计总时间 200 分钟。涵盖数组、栈、图遍历、排序与数据结构设计。

---

## ✅ 第 1 题：`MostCommonWord`

**类型**：字符串处理 + 频率统计
**推荐时间**：20 分钟
**难度**：★☆☆☆☆

**描述**：
给定一个字符串 `paragraph` 和一个禁止词列表 `banned`，请返回出现次数最多、且不在禁止词列表中的单词（不区分大小写）。

```swift
func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String
```

**示例**：
```swift
Input: paragraph = "Bob hit a ball, the hit BALL flew far after it was hit.", banned = ["hit"]
Output: "ball"
```

---

## ✅ 第 2 题：`ProductOfOthers`

**类型**：数组处理 + 前后缀积
**推荐时间**：30 分钟
**难度**：★★☆☆☆

**描述**：
给定一个整数数组 `nums`，返回一个数组 `output`，其中 `output[i]` 等于除了 `nums[i]` 之外所有元素的乘积，不能使用除法，时间复杂度为 O(n)。

```swift
func productExceptSelf(_ nums: [Int]) -> [Int]
```

**示例**：
```swift
Input: [1,2,3,4]
Output: [24,12,8,6]
```

---

## ✅ 第 3 题：`IslandPerimeter`

**类型**：图遍历 + 边界处理
**推荐时间**：40 分钟
**难度**：★★★☆☆

**描述**：
给定一个二维网格 `grid`，其中 0 表示水，1 表示陆地，只有一个岛屿，返回该岛屿的周长。

```swift
func islandPerimeter(_ grid: [[Int]]) -> Int
```

**示例**：
```swift
Input:
[[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]
Output: 16
```

---

## ✅ 第 4 题：`TaskScheduler`

**类型**：贪心算法 + 排序 + 映射统计
**推荐时间**：50 分钟
**难度**：★★★★☆

**描述**：
给定一组任务数组（用字母 A-Z 表示），和冷却时间 `n`，相同任务执行间必须间隔至少 `n` 单位时间。求完成所有任务的最短时间。

```swift
func leastInterval(_ tasks: [Character], _ n: Int) -> Int
```

**示例**：
```swift
Input: tasks = ["A","A","A","B","B","B"], n = 2
Output: 8
Explanation: A->B->idle->A->B->idle->A->B
```

---

## ✅ 第 5 题：`MinStack`

**类型**：栈设计题 + 状态保存
**推荐时间**：50 分钟
**难度**：★★★★☆

**描述**：
设计一个支持 `push`, `pop`, `top`, `getMin` 操作的最小栈，所有操作 O(1)。

```swift
class MinStack {
    init()
    func push(_ val: Int)
    func pop()
    func top() -> Int
    func getMin() -> Int
}
```

**示例**：
```swift
Input:
MinStack()
push(-2)
push(0)
push(-3)
getMin() -> -3
pop()
top() -> 0
getMin() -> -2
```

---

## 🗂 题集回顾与覆盖目标

| 题号 | 名称              | 类型                         | Swift 特点考点           |
|------|-------------------|------------------------------|---------------------------|
| 1    | MostCommonWord    | 字符串清理 + 频率统计        | lowercased + Set + Dict  |
| 2    | ProductOfOthers   | 数组变换 + 前缀积            | O(n) 构造两个数组         |
| 3    | IslandPerimeter   | 网格遍历 + 条件判断          | 二维数组边界判断          |
| 4    | TaskScheduler     | 频率排序 + 贪心调度          | 字符数组 + dict + heap 可扩展 |
| 5    | MinStack          | 数据结构设计 + 辅助栈        | 类定义 + 状态跟踪         |
