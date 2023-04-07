# CLRS Paperback

![CLRS book cover.](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/images/preview.png)

PDF documents of [Solutions to **Introduction to Algorithms** _Third Edition_](https://github.com/walkccc/CLRS/).

- [I Foundations](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/cheatsheet1.pdf)
  - [1 The Role of Algorithms in Computing](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter1.pdf)
  - [2 Getting Started](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter2.pdf)
  - [3 Growth of Functions](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter3.pdf)
  - [4 Divide-and-Conquer](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter4.pdf)
  - [5 Probabilistic Analysis and Randomized Algorithms](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter5.pdf)
- [II Sorting and Order Statistics](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/cheatsheet2.pdf)
  - [6 Heapsort](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter6.pdf)
  - [7 Quicksort](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter7.pdf)
  - [8 Sorting in Linear Time](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter8.pdf)
  - [9 Medians and Order Statistics](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter9.pdf)
- [III Data Structures](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/cheatsheet3.pdf)
  - [10 Elementary Data Structures](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter10.pdf)
  - [11 Hash Tables](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter11.pdf)
  - [12 Binary Search Trees](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter12.pdf)
  - [13 Red-Black Trees](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter13.pdf)
  - [14 Augmenting Data Structures](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter14.pdf)
- [IV Advanced Design and Analysis Techniques](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/cheatsheet4.pdf)
  - [15 Dynamic Programming](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter15.pdf)
  - [16 Greedy Algorithms](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter16.pdf)
  - [17 Amortized Analysis](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter17.pdf)
- [V Advanced Data Structures](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/cheatsheet5.pdf)
  - [18 B-Trees](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter18.pdf)
  - [19 Fibonacci Heaps](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter19.pdf)
  - [20 van Emde Boas Trees](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter20.pdf)
  - [21 Data Structures for Disjoint Sets](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter21.pdf)
- [VI Graph Algorithms](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/cheatsheet6.pdf)
  - [22 Elementary Graph Algorithms](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter22.pdf)
  - [23 Minimum Spanning Trees](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter23.pdf)
  - [24 Single-Source Shortest Paths](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter24.pdf)
  - [25 All-Pairs Shortest Paths](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter25.pdf)
  - [26 Maximum Flow](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter26.pdf)
- [VII Selected Topics](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/cheatsheet7.pdf)
  - [27 Multithreaded Algorithms](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter27.pdf)
  - [28 Matrix Operations](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter28.pdf)
  - [29 Linear Programming](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter29.pdf)
  - [30 Polynomials and the FFT](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter30.pdf)
  - [31 Number-Theoretic Algorithms](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter31.pdf)
  - [32 String Matching](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter32.pdf)
  - [33 Computational Geometry](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter33.pdf)
  - [34 NP-Completeness](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter34.pdf)
  - [35 Approximation Algorithms](https://github.com/hendraanggrian/CLRS-Paperback/raw/assets/chapter35.pdf)

## Specification

Each **topic** (such as *1 The Role of Algorithms in Computing*) are exported
using [Markdown PDF Styles](https://github.com/hendraanggrian/markdown-pdf-styles/).

The **sections** (such as *I Foundations*) are all the topics combined in 3x2
landscape layout, particularly useful as cheatsheet.

## Building

The markdown files in root directory are output of `generate.sh`. It
scans `docs` and `docs_title` directories for **problem** and **non-problem**
input.

Content update must be manually delivered:

- For **docs** directory, pull the source code from the original [docs](https://github.com/walkccc/CLRS/tree/main/docs/).
- For **docs_title** directory, see [mkdocs.yml](https://github.com/walkccc/CLRS/blob/main/mkdocs.yml)
