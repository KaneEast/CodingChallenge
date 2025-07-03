# 🧰 Swift 解题工具箱 – 集合操作 + 标准库速查表

## 📦 一、Array（数组）常用自定义操作

| 功能             | 示例代码                                                                 | 说明                           |
|------------------|---------------------------------------------------------------------------|--------------------------------|
| 去重             | `let unique = Array(Set(arr))`                                           | 简单去重，但顺序不保留         |
| 去重（保序）     | `var seen = Set<Int>(); let res = arr.filter { seen.insert($0).inserted }` | 去重并保持原顺序               |
| 统计频率         | `Dictionary(grouping: arr, by: { $0 }).mapValues { $0.count }`            | 输出每个元素出现次数           |
| 最大/最小值      | `arr.max()`, `arr.min()`                                                  | 返回可选值                     |
| 索引和值遍历     | `for (i, v) in arr.enumerated()`                                          | 遍历下标和值                   |
| 连续元素配对     | `zip(arr, arr.dropFirst())`                                               | 取相邻元素对                   |
| 所有子数组窗口   | `for i in 0..<arr.count { for j in i..<arr.count { let sub = Array(arr[i...j]) }}` | 暴力枚举所有子数组  |
| 区间反转         | `arr[i...j].reversed()`                                                  | 返回新的反转序列               |
| 交换元素         | `arr.swapAt(i, j)`                                                       | 原地交换两个位置               |

---

## 📦 二、Dictionary（字典）常用操作

| 功能             | 示例代码                                                                 | 说明                           |
|------------------|---------------------------------------------------------------------------|--------------------------------|
| 字符频率统计     | `for c in str { dict[c, default: 0] += 1 }`                               | 解题常见操作                   |
| 按值排序         | `dict.sorted { $0.value > $1.value }`                                     | 返回键值对数组                 |
| 遍历键值对       | `for (key, val) in dict`                                                  | 标准遍历方式                   |
| 条件过滤         | `dict.filter { $0.value > 1 }`                                            | 筛选满足条件的键值对           |
| 映射值           | `dict.mapValues { $0 * 2 }`                                               | 返回新字典                     |
| 合并两个字典     | `dict1.merging(dict2, uniquingKeysWith: +)`                               | 相同键处理方式可自定义         |

---

## 📚 Swift 标准库实用操作速查表

### 🔢 数值与数学

| 功能         | 示例代码                   |
|--------------|----------------------------|
| 绝对值       | `abs(x)`                   |
| 向下/向上取整| `floor(x)`, `ceil(x)`       |
| 最大/最小值   | `max(a, b)`, `min(a, b)`   |
| 取模         | `a % b`                    |
| 随机数       | `Int.random(in: 0..<n)`    |

### 🔁 控制与流程

| 功能         | 示例代码                          |
|--------------|-----------------------------------|
| 三元表达式   | `let x = cond ? a : b`           |
| switch       | `switch val { case 1: ... }`     |
| guard-let    | `guard let val = ... else { ... }`| 安全解包，提前退出 |
| defer        | `defer { ... }`                  | 延后执行一段清理代码 |

### 📐 String 与 Character 操作

| 功能         | 示例代码                                                       | 说明                     |
|--------------|----------------------------------------------------------------|--------------------------|
| 转数组       | `Array(str)`                                                   | 用于字符逐个处理         |
| 字符访问     | `str[str.index(str.startIndex, offsetBy: i)]`                  | Swift 字符串非整数索引   |
| 遍历字符     | `for c in str`                                                  | 标准遍历方式             |
| 截取子串     | `String(str[i..<j])`                                            | 使用 Index 范围           |
| 反转字符串   | `String(str.reversed())`                                        | 回文判断常用             |
| 替换内容     | `str.replacingOccurrences(of: "a", with: "b")`             | 字符串替换               |

### 📌 其他实用函数/特性

| 功能         | 示例代码                          | 说明         |
|--------------|-----------------------------------|--------------|
| 排序         | `arr.sorted()`, `arr.sort()`     | 新数组 / 原地排序 |
| reduce       | `arr.reduce(0, +)`                | 求和、合并等   |
| map / compactMap | `arr.map { $0 * 2 }`, `arr.compactMap { Int($0) }` | 变换与去 nil |
| zip          | `zip(arr1, arr2)`                 | 并行配对       |

---

## 🎁 Bonus：一行实用片段

```swift
// 字符串是否为回文
String(str) == String(str.reversed())

// 两字符串是否是字母重排（anagram）
s1.sorted() == s2.sorted()

// 滑动窗口遍历
for (left, right) in zip(0..., k..<arr.count) {
  let window = arr[left...right]
}
