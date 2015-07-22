## Reproduce a GWT problem

### Problem

On some incorrect programs GWT fails to report error properly (with file and line number)
and shows meaningless `java.lang.IndexOutOfBoundsException: Index: 0` exception instead:
[here](https://gist.github.com/stepancheg/db1eb94998fea540930a).

Similar exceptions occur in very different situations, and make it hard to find
the cause.

I've found the simplest case for that exception.

### How to reproduce

1. Clone the repository
2. Comment out call to nonexistent `foo()` function in class `Cccc`.
3. Start devmode+superdevmode, using `./gwt-devmode.sh` or similar.
4. Open page in your browser: http://localhost:8888/aaaa.Bbbb/Bbbb.html . Page works fine.
5. Uncomment call to nonexistent function `foo()`. Result is the exception.

Problem is reproducible with GWT 2.7.0 and with 2.8.0-20150717.
OS: MacOS X 10.10.4
Browser: Firefox 39.0
Java: "1.8.0_45"
