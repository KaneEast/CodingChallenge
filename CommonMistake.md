# My common mistake

Codility’s scoring prioritizes algorithms that not only solve problems but do so efficiently.

Array was empty or single

missing first or last

large test


# Common Testing Patterns for Coding Challenges

1. **Empty Input**  
   - Edge cases where the input array, string, or list is empty.
   - Example: `[]` or `""`.

2. **Single Element**  
   - Inputs with only one element.  
   - Example: `[0]` or `[1]`.

3. **Small Inputs**  
   - Minimal arrays or sequences, typically with 2-3 elements.  
   - Example: `[1, 2]` or `[3, 4, 5]`.

4. **Maximum Input Size**  
   - Inputs at the upper bound of size constraints.  
   - Example: Arrays of length \(10^6\) or integers close to \(10^9\).

5. **Minimum and Maximum Values**  
   - Inputs containing the smallest or largest allowed values.  
   - Example: `[0]` or `[INT_MAX]`.

6. **Repeated Values**  
   - Scenarios with duplicates or single repeated values.  
   - Example: `[2, 2, 2]`.

7. **Alternating or Zig-Zag Patterns**  
   - Inputs like `[1, 2, 1, 2, 1]` or `[1, 3, 2, 4, 3]`.

8. **Sorted Inputs**  
   - Arrays sorted in ascending or descending order.  
   - Example: `[1, 2, 3, 4]` or `[4, 3, 2, 1]`.

9. **Reverse-Sorted Inputs**  
   - Same as sorted inputs but in reverse.  
   - Example: `[10, 9, 8, 7]`.

10. **Large Numbers**  
    - Scenarios involving the largest possible numbers within constraints.

11. **One Missing/Extra Element**  
    - A sequence with one missing or additional element.  
    - Example: `[1, 2, 3, 5]` (missing `4`).

12. **Repeating Segments**  
    - Subarrays or values repeating in a block pattern.  
    - Example: `[1, 2, 1, 2, 1, 2]`.

13. **Edge Behavior**  
    - Cases right at the boundary of the constraints.  
    - Example: Rotating an array `K` times, where `K` is very large (e.g., \(K > N\)).

14. **Floating or Precision Tests**  
    - Scenarios to test numerical precision (if applicable).  
    - Example: Edge cases with floating-point numbers.

15. **Stress Test**  
    - Performance cases with huge inputs designed to test how efficiently your solution scales.
