#!/bin/bash

readonly SOURCE_ROOT="$(cd "$(dirname "$0")" && pwd)"

echo
echo "Starting..."
echo
for chapter in "docs/"*; do
  chapter_name="$(basename "$chapter")"
  chapter_version="${chapter_name#*Chap0}" # remove prefix
  chapter_version="${chapter_version#*Chap}" # remove prefix
  case "$chapter_version" in
    1) chapter_title="1 The Role of Algorithms in Computing";;
    2) chapter_title="2 Getting Started";;
    3) chapter_title="3 Growth of Functions";;
    4) chapter_title="4 Divide-and-Conquer";;
    5) chapter_title="5 Probabilistic Analysis and Randomized Algorithms";;
    6) chapter_title="6 Heapsort";;
    7) chapter_title="7 Quicksort";;
    8) chapter_title="8 Sorting in Linear Time";;
    9) chapter_title="9 Medians and Order Statistics";;
    10) chapter_title="10 Elementary Data Structures";;
    11) chapter_title="11 Hash Tables";;
    12) chapter_title="12 Binary Search Trees";;
    13) chapter_title="13 Red-Black Trees";;
    14) chapter_title="14 Augmenting Data Structures";;
    15) chapter_title="15 Dynamic Programming";;
    16) chapter_title="16 Greedy Algorithms";;
    17) chapter_title="17 Amortized Analysis";;
    18) chapter_title="18 B-Trees";;
    19) chapter_title="19 Fibonacci Heaps";;
    20) chapter_title="20 van Emde Boas Trees";;
    21) chapter_title="21 Data Structures for Disjoint Sets";;
    22) chapter_title="22 Elementary Graph Algorithms";;
    23) chapter_title="23 Minimum Spanning Trees";;
    24) chapter_title="24 Single-Source Shortest Paths";;
    25) chapter_title="25 All-Pairs Shortest Paths";;
    26) chapter_title="26 Maximum Flow";;
    27) chapter_title="27 Multithreaded Algorithms";;
    28) chapter_title="28 Matrix Operations";;
    29) chapter_title="29 Linear Programming";;
    30) chapter_title="30 Polynomials and the FFT";;
    31) chapter_title="31 Number-Theoretic Algorithms";;
    32) chapter_title="32 String Matching";;
    33) chapter_title="33 Computational Geometry";;
    34) chapter_title="34 NP-Completeness";;
    35) chapter_title="35 Approximation Algorithms";;
  esac
  target_filename="chapter$chapter_version"
  target_file="$SOURCE_ROOT/$target_filename.md"

  echo "- $chapter_name:"
  if [[ -f "$target_file" ]]; then
    rm "$target_file"
  fi
  echo "<h1 style=\"text-align: center;\">$chapter_title</h1>" > "$target_file"

  for section in "$chapter/"*; do
    if [[ -f "$section" ]]; then # there is 1 directory here
      section_name="$(basename "$section")"
      echo "  - $section_name"

      echo >> "$target_file"
      echo "$(<docs_title/$chapter_name/$section_name)" >> "$target_file"
      echo >> "$target_file"
      echo "$(<$section)" >> "$target_file"
    fi
  done

  echo "  - Problems:"
  for problem in "$chapter/Problems/"*; do
    problem_name="$(basename "$problem")"
    echo "    - $problem_name"

    echo >> "$target_file"
    echo "$(<docs_title/$chapter_name/Problems/$problem_name)" >> "$target_file"
    echo >> "$target_file"
    echo "$(<$problem)" >> "$target_file"
    echo >> "$target_file"
  done

  echo "<!-- hotfix: KaTeX -->" >> "$target_file"
  echo "<!-- https://github.com/yzane/vscode-markdown-pdf/issues/21/ -->" >> "$target_file"
  echo "<script type=\"text/javascript\" src=\"http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML\"></script>" >> "$target_file"
  echo "<script type=\"text/x-mathjax-config\">MathJax.Hub.Config({ tex2jax: { inlineMath: [['$', '$']] }, messageStyle: 'none' });</script>" >> "$target_file"
done

echo
echo "Done!"
echo
