# �Ϥ����

���ץ���� `aux-make` ��
��`markdown` �ǽ񤫤줿�ե����뤫���
�ʰ׷�����`aux` �ե������Ĥ��뤿���
�ץ����Ǥ��롣

    aux-make -o foo.aux foo.md
    aux-make -o foo.aux foo1.md foo2.md...

�Ǥ������ä� `aux` �ե������
[bibexport](https://www.ctan.org/pkg/bibexport)
�Τ���˻Ȥ����ȤΤߤ�ͤ����Ƥ��롣
¾�����ӡ����Ȥ��� `bibtex` �ǻȤ��Ȥ��ä�
���ӤˤϻȤ��ʤ���
`bibexport` ����λ���ˡ�ϼ��ΤȤ���Ǥ��롣

    bibexport -o foo.bib foo.aux

# ����

������ `makdown` ��
`pandoc` �� `citeproc` filter �Τ����
�񤫤�Ƥ��뤳�Ȥ����ꤷ�Ƥ��롣
���ʤ�� `baa-2020` �ؤθ��ڤ�
`[@baa-2020]`�Ȥ���������ɸ������Ƥ��롣
1�ԤˤϤ��ΰ��Ѥϰ����������񤫤ʤ����ȡ�
��İʾ夢��ȡ����Υץ����ε�ư��
�ݾڤ���ʤ���

`-y` ���ץ�����Ĥ���ȡ�
�ʤ錄���μ���Ρ� `yyaml` �����
�񤫤줿�ե����뤬�оݤȤʤ롣

# files

�ץ����ϡ�
���ξ�Υǥ��쥯�ȥ�ˤ��� `bibdata`�ե������
��������




---
title: aux-make
author: satoshi
date: 2020-09-21
---
