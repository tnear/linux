# LibFuzzer

### Create a function to be fuzzed and harness

LibFuzzer.c
```cpp
#include <cstddef>
#include <cstdint>
#include <cstdlib>

void buggyFunction(const uint8_t* data, size_t size) {
    if (size >= 3) {
        // bug: Access out of bounds when data[0] == 255
        if (data[0] == 255 && data[data[0]] == 'X') {
            abort(); // crash the program
        }
    }
}

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    buggyFunction(data, size);
    return 0;
}
```

### Compile with fuzz testing options
`clang++ -g -fsanitize=address,fuzzer libFuzzer.cpp -o libFuzzer`

### Run fuzzer
`./libFuzzer`
```
==1280728==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x60200000186f at pc 0x000000554bc1 bp 0x7ffee5803450 sp 0x7ffee5803448
READ of size 1 at 0x60200000186f thread T0
    #0 0x554bc0 in buggyFunction(unsigned char const*, unsigned long) /tmp/libFuzzer.cpp:8:31
    #1 0x554c84 in LLVMFuzzerTestOneInput /tmp/libFuzzer.cpp:16:5
    #2 0x45cd51 in fuzzer::Fuzzer::ExecuteCallback(unsigned char const*, unsigned long) /local/mnt/workspace/bcain_clang_bcain-ubuntu_23113/llvm/utils/release/final/llvm.src/projects/compiler-rt/lib/fuzzer/FuzzerLoop.cpp:553:15

Address 0x60200000186f is a wild pointer.
SUMMARY: AddressSanitizer: heap-buffer-overflow /tmp/libFuzzer.cpp:8:31 in buggyFunction(unsigned char const*, unsigned long)
```

### View file which caused the crash
```
$ \cat crash-a68f6ae95f2cf4e88fe2faa7c39bc4bab704bba6
??]
```

### (Optional) Create starting corpus to increase effectiveness
```bash
mkdir corpus
echo 'hello' > corpus/file1
echo 'world' > corpus/file2
echo -e '\xff\x00\x42' > corpus/file3  # An example that might be closer to triggering the bug
```

### Run fuzzer using corpus
`./libFuzzer corpus`
```
INFO:        3 files found in corpus
INFO: -max_len is not provided; libFuzzer will not generate inputs larger than 4096 bytes
INFO: seed corpus: files: 3 min: 4b max: 6b total: 16b rss: 26Mb
```
