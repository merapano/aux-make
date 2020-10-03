# はじめに

当プログラム `aux-make` は
`markdown` (pandoc-citeproc) で書かれたファイルから
簡易形式の`aux` ファイルをつくるための
プログラムである。

    aux-make -o foo.aux foo.md
    aux-make -o foo.aux foo1.md foo2.md...

できあがった `aux` ファイルは
[bibexport](https://www.ctan.org/pkg/bibexport)
[^bibexport] のために使うことのみ [^bibtool]  
を考えられている。
他の用途、たとえば `bibtex` で使うといった
用途には使えない。
`bibexport` からの使用法は次のとおりである。

    bibexport -o foo.bib foo.aux

[^bibexport]: Ubuntu では `texlive-bibtex-extra` パッケージに含まれている。
[^bibtool]: `bibtool` でも可能だと思うのだが、`bibtool -x bib.aux -o bib.bib` では、なぜかエントリーが二重になる。

# オプション

aux ファイルは `-o=foo.aux` ないし
`--output foo.axu` という形で指定する。
デフォルトは `bib.aux` である。

`bibdata` は `-d="~/foo/bar.bib,~/foo/baz.bib"`
という形で指定する。
デフォルトはプログラム作成者のものであるので、
かならず指定すること。

なお、`bibxport` はスタイルファイルを要求するが、
出力には関係しない。
どんなスタイルファイルが指定してあっても、
`aux` では chicago が指定されたこととする。
[^chicago]: 繰り返すが、なにを指定しても差はでない。


# 想定

対象となる `makdown` は
`pandoc` の `citeproc` filter のために
書かれていることを想定している。
すなわち `baa-2020` への言及は
`[@baa-2020]`という形式で標記されているとする。
1行にはこの引用は一回だけしか書かないこと。
二つ以上あると、このプログラムの挙動は
保証されない。

`-y` オプションをつけると、
（わたしの自作の） `yyaml` 言語で
書かれたファイルが対象となる。
（未実装）

# files

プログラムは、
指定されたディレクトリにある `bibdata`ファイルを
さがす。

# 作り出す aux ファイル

     \bibstyle{chicago}
     \citation{auge-95}
     \citation{austin-minds}
     \bibstyle{chicago}
     \bibdata{/home/satoshi/anthrop/biblio/anthrop.bib,.../phil.bib}

---
title: aux-make
author: satoshi
date: 2020-09-21
---
