# Cachegrind

Cachegrind is a cache and branch-prediction profiler tool that's part of the Valgrind suite of tools for debugging and profiling Linux programs. It simulates how your program interacts with a computer's cache hierarchy and branch predictor to identify inefficient memory access patterns and predictability of branches. By providing detailed information about cache hits, misses, and the effectiveness of branch prediction, cachegrind helps developers optimize their code for better performance and efficiency.

## Example
C++ source code:

```cpp
#include <vector>
#include <iostream>
using namespace std;

int main()
{
    vector<int> numbers(10000, 1); // Large enough to cause some cache misses
    int sum = 0;
    for (int number : numbers) {
        sum += number;
    }
    cout << "Sum: " << sum << endl;
    return 0;
}
```

### Running cachegrind
```bash
# compile
g++ -g -o example example.cpp

# run cachegrind
valgrind --tool=cachegrind ./example

# annotate output
cg_annotate cachegrind.out.<pid>
```

### `cg_annotate` output


```
I1 cache:         32768 B, 64 B, 8-way associative
D1 cache:         32768 B, 64 B, 8-way associative
LL cache:         12582912 B, 64 B, 24-way associative
Command:          ./cachegrind
Data file:        cachegrind.out.268860
Events recorded:  Ir I1mr ILmr Dr D1mr DLmr Dw D1mw DLmw
Events shown:     Ir I1mr ILmr Dr D1mr DLmr Dw D1mw DLmw
Event sort order: Ir I1mr ILmr Dr D1mr DLmr Dw D1mw DLmw
Thresholds:       0.1 100 100 100 100 100 100 100 100
Include dirs:     
User annotated:   
Auto-annotation:  on
```
- `I1 cache`: level 1 instruction cache
- `D1 cache`: level 1 data cache
- `LL cache`: last level (often L3) cache

```
Ir       I1mr      Dr       D1mr      Dw       D1mw 
100,123  2,345     50,000   1,234     25,000   567  PROGRAM TOTALS
```

- `Ir`: instruction reads
- `Dr`: data reads
- `Dw`: data writes
- `I1mr`: L1 instruction cache misses
- `D1mr`: L1 data cache read misses
- `D1mw`: L1 data cache write misses

This example shows a program with 100,123 instruction reads, 2,345 of which missed the L1 instruction cache, etc. The goal is to minimize these miss rates to improve performance, often by optimizing data access patterns to be more cache-friendly.
