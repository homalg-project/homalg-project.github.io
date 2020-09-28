---
title: CAP-based packages
tags:
 - categorical doctrines
 - category constructors
description: CAP-based packages
---

# CAP-based packages

## Categorical doctrines

[CAP][CAP] defines *and* allows defining (hierarchies of) categorical [doctrines][doctrine].
   * There are several [CAP][CAP]-based packages that define [*various* ***categorical doctrines***](doctrines).
   * Defining a [doctrine][doctrine] means several things:
       1. **Type specification** of all the categorical operations which are required by the [doctrine][doctrine]: For example specifying those operations involved in the definition of a certain (co)limit (e.g., a [kernel](https://ncatlab.org/nlab/show/kernel)) which exists in the [doctrine][doctrine] (e.g., [Abelian category](https://ncatlab.org/nlab/show/abelian+category)). This includes the specification of the input and output<sup id="a1">[1](#f1),</sup><sup id="a2">[2](#f2)</sup> of each such operation. Specifying a specific limit means specifying all operations involved in the definition of that limit. For example, specifying ["kernel"](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X7DCD99628504B810) means specifying all operations entering the definition of the ["kernel"](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X7DCD99628504B810):
           - [`KernelObject`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X82EAD3357C9FE4C8),
           - [`KernelEmbedding`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X8430666980D732FB),
           - [`MorphismFromKernelObjectToSink`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X7B5D9DFB86DFF424),
           - [`KernelLift`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X851623317C59DDE5),
           - [`KernelObjectFunctorial`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X78D5B94A7EF4D4F0).
       2. **Doctrine-specific derivations**  of categorical operations from other ones: For example in an Abelian category the [`LiftAlongMonomorphism`](https://homalg-project.github.io/CAP_project/CAP/doc/chap3_mj.html#X83CDF65582CD9921) can be [derived](https://github.com/homalg-project/CAP_project/blob/85d19bd33e1e3d8971d79f13cf814a5210de3392/CAP/gap/DerivedMethods.gi#L1641) from<sup id="a3">[3](#f3)</sup>
           + [`CokernelProjection`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X78948D7A7B52AB31),
           + [`KernelLift`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X851623317C59DDE5),
           + [`Compose`](https://homalg-project.github.io/CAP_project/CAP/doc/chap3_mj.html#X8244F7A0868BE27D),
           + [`Inverse`](https://homalg-project.github.io/CAP_project/CAP/doc/chap3_mj.html#X864F84C47DC1A620).
       3. **Doctrine-specific logical implications**: For example, in an Abelian category the algorithm `IsIsomorphism` is [equivalent](https://github.com/homalg-project/CAP_project/blob/85d19bd33e1e3d8971d79f13cf814a5210de3392/CAP/LogicForCategories/PredicateImplicationsForAbelianCategories.tex#L1) to the algorithm `IsMonomorphism and IsEpimorphism`.<sup id="a4">[4](#f4)</sup>
   * Even if [GAP][GAP] (automatically) orgainzes the doctrines in hierarchies the relations among the category (instances) fulfilling these doctrines are much richer than these hierarchies.<sup id="a5">[5](#f5)</sup> These relations are given by several functors, natural transformations between (parallel) functors, and adjunctions (also described by natural transformations) between (anti-parallel) functors.

## Category constructors

The CAP-based packages provide [*various* ***category constructors***](constructors) which take a combinatorial or algebraic data structure, or even a category or several categories (of a certain doctrine) as input and provide another category (of a possibly different doctrine) as output.

## Functors

The [CAP][CAP]-based packages provide various functors between these categories.

## Natural transformations

The [CAP][CAP]-based packages provide various natural transformations between (parallel) functors.

## Towers of categories

The true strength of [CAP][CAP] is that it allows concatenating these category constructor to build arbitrary high towers.

## CompilerForCAP

[CompilerForCAP](https://github.com/homalg-project/CAP_project/tree/master/CompilerForCAP) (alpha) should be able to use the logical rules valid in the various doctrines to compile these towers of categories (built up by applying multiple category constructors) and produce a highly efficient (parallel) code (in HPC-GAP/Julia).

---

<b id="f1">1</b> [Kernel: Documentation of the specific limit](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X7DCD99628504B810). [↩](#a1)<br>
<b id="f2">2</b> [Kernel: Specitfication of the specific limit](https://github.com/homalg-project/CAP_project/blob/master/CAP/gap/MethodRecord.gi#L265). [↩](#a2)<br>
<b id="f3">3</b> This is wrong in other doctrines like [pre-Abelain](https://ncatlab.org/nlab/show/pre-abelian+category), and does not even make sense in doctrines without kernels and cokernels. [↩](#a3)<br>
<b id="f4">4</b> Again, this is wrong in other doctrines like [pre-Abelain](https://ncatlab.org/nlab/show/pre-abelian+category). [↩](#a4)<br>
<b id="f5">5</b> One can [view a doctrine as a (specific) 2-category](https://ncatlab.org/nlab/show/doctrine#as_2categories) and the category of doctrines as a 3-category of 2-categories.

<!-- BEGIN FOOTER -->

[GAP]: hhttps://www.gap-system.org/

[CAP_project]: https://github.com/homalg-project/CAP_project/

[CAP]: https://github.com/homalg-project/CAP_project/tree/master/CAP/

[MonoidalCategories]: https://github.com/homalg-project/CAP_project/tree/master/MonoidalCategories/

[TriangulatedCategories]: https://github.com/homalg-project/HigherHomologicalAlgebra/tree/master/TriangulatedCategories/

[Toposes]: https://github.com/homalg-project/Toposes/

[Locales]: https://github.com/homalg-project/Locales

[doctrine]: https://ncatlab.org/nlab/show/doctrine/

[thin]: https://ncatlab.org/nlab/show/thin+category/

<!-- END FOOTER -->
