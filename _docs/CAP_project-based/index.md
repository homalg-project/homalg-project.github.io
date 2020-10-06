---
title: CAP-based packages
tags:
 - CAP
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
           - [`MorphismFromKernelObjectToSink`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X78140AF884DE0736),
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

<!-- BEGIN CAP_project USED_BY -->
## Packages based on [CAP_project](https://github.com/homalg-project/CAP_project):

| Name | Description | Documentation | Build Status | Code Coverage | Status |
| ---- | ----------- | ------------- | ------------ | ------------- | ------ |
| [Algebroids](https://github.com/homalg-project/Algebroids) | Algebroids and bialgebroids as preadditive categories generated by enhanced quivers | [![HTML stable documentation][docs-Algebroids-img]][docs-Algebroids-url] | [![Build Status][tests-Algebroids-img]][tests-Algebroids-url] | [![Code Coverage][codecov-Algebroids-img]][codecov-Algebroids-url] | dev |
| [CategoryConstructor](https://github.com/homalg-project/CategoryConstructor) | Construct categories out of given ones | [![HTML stable documentation][docs-CategoryConstructor-img]][docs-CategoryConstructor-url] | [![Build Status][tests-CategoryConstructor-img]][tests-CategoryConstructor-url] | [![Code Coverage][codecov-CategoryConstructor-img]][codecov-CategoryConstructor-url] | dev |
| [CategoriesWithAmbientObjects](https://github.com/homalg-project/CategoriesWithAmbientObjects) | Categories with ambient objects for CAP | Not available | [![Build Status][tests-CategoriesWithAmbientObjects-img]][tests-CategoriesWithAmbientObjects-url] | [![Code Coverage][codecov-CategoriesWithAmbientObjects-img]][codecov-CategoriesWithAmbientObjects-url] | dev |
| [CatReps](https://github.com/homalg-project/CatReps) | Representations and cohomology of finite categories | [![HTML stable documentation][docs-CatReps-img]][docs-CatReps-url] | [![Build Status][tests-CatReps-img]][tests-CatReps-url] | [![Code Coverage][codecov-CatReps-img]][codecov-CatReps-url] | dev |
| [FinSetsForCAP](https://github.com/homalg-project/FinSetsForCAP) | The elementary topos of (skeletal) finite sets | [![HTML stable documentation][docs-FinSetsForCAP-img]][docs-FinSetsForCAP-url] | [![Build Status][tests-FinSetsForCAP-img]][tests-FinSetsForCAP-url] | [![Code Coverage][codecov-FinSetsForCAP-img]][codecov-FinSetsForCAP-url] | dev |
| [FinGSetsForCAP](https://github.com/homalg-project/FinGSetsForCAP) | The elementary topos of (skeletal) finite G-sets | [![HTML stable documentation][docs-FinGSetsForCAP-img]][docs-FinGSetsForCAP-url] | [![Build Status][tests-FinGSetsForCAP-img]][tests-FinGSetsForCAP-url] | [![Code Coverage][codecov-FinGSetsForCAP-img]][codecov-FinGSetsForCAP-url] | dev |
| [FunctorCategories](https://github.com/homalg-project/FunctorCategories) | Categories of functors | [![HTML stable documentation][docs-FunctorCategories-img]][docs-FunctorCategories-url] | [![Build Status][tests-FunctorCategories-img]][tests-FunctorCategories-url] | [![Code Coverage][codecov-FunctorCategories-img]][codecov-FunctorCategories-url] | dev |
| [GradedCategories](https://github.com/homalg-project/GradedCategories) | Graded closures of categories | [![HTML stable documentation][docs-GradedCategories-img]][docs-GradedCategories-url] | [![Build Status][tests-GradedCategories-img]][tests-GradedCategories-url] | [![Code Coverage][codecov-GradedCategories-img]][codecov-GradedCategories-url] | dev |
| [IntrinsicCategories](https://github.com/homalg-project/IntrinsicCategories) | Intrinsic categories for CAP | Not available | [![Build Status][tests-IntrinsicCategories-img]][tests-IntrinsicCategories-url] | [![Code Coverage][codecov-IntrinsicCategories-img]][codecov-IntrinsicCategories-url] | dev |
| [IntrinsicModules](https://github.com/homalg-project/IntrinsicModules) | Intrinsic finitely presented modules with generators and elements | Not available | [![Build Status][tests-IntrinsicModules-img]][tests-IntrinsicModules-url] | [![Code Coverage][codecov-IntrinsicModules-img]][codecov-IntrinsicModules-url] | dev |
| [InternalModules](https://github.com/homalg-project/InternalModules) | Modules over internal algebras | [![HTML stable documentation][docs-InternalModules-img]][docs-InternalModules-url] | [![Build Status][tests-InternalModules-img]][tests-InternalModules-url] | [![Code Coverage][codecov-InternalModules-img]][codecov-InternalModules-url] | dev |
| [LazyCategories](https://github.com/homalg-project/LazyCategories) | Construct an equivalent lazy category out of a CAP category | [![HTML stable documentation][docs-LazyCategories-img]][docs-LazyCategories-url] | [![Build Status][tests-LazyCategories-img]][tests-LazyCategories-url] | [![Code Coverage][codecov-LazyCategories-img]][codecov-LazyCategories-url] | dev |
| [Locales](https://github.com/homalg-project/Locales) | Locales, frames, coframes, meet semi-lattices of locally closed subsets, and Boolean algebras of constructible sets | [![HTML stable documentation][docs-Locales-img]][docs-Locales-url] | [![Build Status][tests-Locales-img]][tests-Locales-url] | [![Code Coverage][codecov-Locales-img]][codecov-Locales-url] | dev |
| [QPA2](https://github.com/homalg-project/QPA2) | Quivers and Path Algebras | Not available | [![Build Status][tests-QPA2-img]][tests-QPA2-url] | [![Code Coverage][codecov-QPA2-img]][codecov-QPA2-url] | dev |
| [SubcategoriesForCAP](https://github.com/homalg-project/SubcategoriesForCAP) | Subcategory and other related constructors for CAP categories | [![HTML stable documentation][docs-SubcategoriesForCAP-img]][docs-SubcategoriesForCAP-url] | [![Build Status][tests-SubcategoriesForCAP-img]][tests-SubcategoriesForCAP-url] | [![Code Coverage][codecov-SubcategoriesForCAP-img]][codecov-SubcategoriesForCAP-url] | dev |
| [Toposes](https://github.com/homalg-project/Toposes) | Elementary toposes | [![HTML stable documentation][docs-Toposes-img]][docs-Toposes-url] | [![Build Status][tests-Toposes-img]][tests-Toposes-url] | [![Code Coverage][codecov-Toposes-img]][codecov-Toposes-url] | dev |
| [WrapperCategories](https://github.com/homalg-project/WrapperCategories) | Construct an equivalent wrapper category out of a CAP category | [![HTML stable documentation][docs-WrapperCategories-img]][docs-WrapperCategories-url] | [![Build Status][tests-WrapperCategories-img]][tests-WrapperCategories-url] | [![Code Coverage][codecov-WrapperCategories-img]][codecov-WrapperCategories-url] | dev |
| [ZariskiFrames](https://github.com/homalg-project/ZariskiFrames) | (Co)frames/Locales of Zariski closed/open subsets of affine, projective, or toric varieties | [![HTML stable documentation][docs-ZariskiFrames-img]][docs-ZariskiFrames-url] | [![Build Status][tests-ZariskiFrames-img]][tests-ZariskiFrames-url] | [![Code Coverage][codecov-ZariskiFrames-img]][codecov-ZariskiFrames-url] | dev |

[docs-Algebroids-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-Algebroids-url]: https://homalg-project.github.io/Algebroids/doc/chap0_mj.html

[tests-Algebroids-img]: https://github.com/homalg-project/Algebroids/workflows/Tests/badge.svg?branch=master
[tests-Algebroids-url]: https://github.com/homalg-project/Algebroids/actions?query=workflow%3ATests+branch%3Amaster

[codecov-Algebroids-img]: https://codecov.io/gh/homalg-project/Algebroids/branch/master/graph/badge.svg
[codecov-Algebroids-url]: https://codecov.io/gh/homalg-project/Algebroids

[docs-CategoryConstructor-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-CategoryConstructor-url]: https://homalg-project.github.io/CategoryConstructor/doc/chap0_mj.html

[tests-CategoryConstructor-img]: https://github.com/homalg-project/CategoryConstructor/workflows/Tests/badge.svg?branch=master
[tests-CategoryConstructor-url]: https://github.com/homalg-project/CategoryConstructor/actions?query=workflow%3ATests+branch%3Amaster

[codecov-CategoryConstructor-img]: https://codecov.io/gh/homalg-project/CategoryConstructor/branch/master/graph/badge.svg
[codecov-CategoryConstructor-url]: https://codecov.io/gh/homalg-project/CategoryConstructor

[tests-CategoriesWithAmbientObjects-img]: https://github.com/homalg-project/CategoriesWithAmbientObjects/workflows/Tests/badge.svg?branch=master
[tests-CategoriesWithAmbientObjects-url]: https://github.com/homalg-project/CategoriesWithAmbientObjects/actions?query=workflow%3ATests+branch%3Amaster

[codecov-CategoriesWithAmbientObjects-img]: https://codecov.io/gh/homalg-project/CategoriesWithAmbientObjects/branch/master/graph/badge.svg
[codecov-CategoriesWithAmbientObjects-url]: https://codecov.io/gh/homalg-project/CategoriesWithAmbientObjects

[docs-CatReps-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-CatReps-url]: https://homalg-project.github.io/CatReps/doc/chap0_mj.html

[tests-CatReps-img]: https://github.com/homalg-project/CatReps/workflows/Tests/badge.svg?branch=master
[tests-CatReps-url]: https://github.com/homalg-project/CatReps/actions?query=workflow%3ATests+branch%3Amaster

[codecov-CatReps-img]: https://codecov.io/gh/homalg-project/CatReps/branch/master/graph/badge.svg
[codecov-CatReps-url]: https://codecov.io/gh/homalg-project/CatReps

[docs-FinSetsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-FinSetsForCAP-url]: https://homalg-project.github.io/FinSetsForCAP/doc/chap0_mj.html

[tests-FinSetsForCAP-img]: https://github.com/homalg-project/FinSetsForCAP/workflows/Tests/badge.svg?branch=master
[tests-FinSetsForCAP-url]: https://github.com/homalg-project/FinSetsForCAP/actions?query=workflow%3ATests+branch%3Amaster

[codecov-FinSetsForCAP-img]: https://codecov.io/gh/homalg-project/FinSetsForCAP/branch/master/graph/badge.svg
[codecov-FinSetsForCAP-url]: https://codecov.io/gh/homalg-project/FinSetsForCAP

[docs-FinGSetsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-FinGSetsForCAP-url]: https://homalg-project.github.io/FinGSetsForCAP/doc/chap0_mj.html

[tests-FinGSetsForCAP-img]: https://github.com/homalg-project/FinGSetsForCAP/workflows/Tests/badge.svg?branch=master
[tests-FinGSetsForCAP-url]: https://github.com/homalg-project/FinGSetsForCAP/actions?query=workflow%3ATests+branch%3Amaster

[codecov-FinGSetsForCAP-img]: https://codecov.io/gh/homalg-project/FinGSetsForCAP/branch/master/graph/badge.svg
[codecov-FinGSetsForCAP-url]: https://codecov.io/gh/homalg-project/FinGSetsForCAP

[docs-FunctorCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-FunctorCategories-url]: https://homalg-project.github.io/FunctorCategories/doc/chap0_mj.html

[tests-FunctorCategories-img]: https://github.com/homalg-project/FunctorCategories/workflows/Tests/badge.svg?branch=master
[tests-FunctorCategories-url]: https://github.com/homalg-project/FunctorCategories/actions?query=workflow%3ATests+branch%3Amaster

[codecov-FunctorCategories-img]: https://codecov.io/gh/homalg-project/FunctorCategories/branch/master/graph/badge.svg
[codecov-FunctorCategories-url]: https://codecov.io/gh/homalg-project/FunctorCategories

[docs-GradedCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-GradedCategories-url]: https://homalg-project.github.io/GradedCategories/doc/chap0_mj.html

[tests-GradedCategories-img]: https://github.com/homalg-project/GradedCategories/workflows/Tests/badge.svg?branch=master
[tests-GradedCategories-url]: https://github.com/homalg-project/GradedCategories/actions?query=workflow%3ATests+branch%3Amaster

[codecov-GradedCategories-img]: https://codecov.io/gh/homalg-project/GradedCategories/branch/master/graph/badge.svg
[codecov-GradedCategories-url]: https://codecov.io/gh/homalg-project/GradedCategories

[tests-IntrinsicCategories-img]: https://github.com/homalg-project/IntrinsicCategories/workflows/Tests/badge.svg?branch=master
[tests-IntrinsicCategories-url]: https://github.com/homalg-project/IntrinsicCategories/actions?query=workflow%3ATests+branch%3Amaster

[codecov-IntrinsicCategories-img]: https://codecov.io/gh/homalg-project/IntrinsicCategories/branch/master/graph/badge.svg
[codecov-IntrinsicCategories-url]: https://codecov.io/gh/homalg-project/IntrinsicCategories

[tests-IntrinsicModules-img]: https://github.com/homalg-project/IntrinsicModules/workflows/Tests/badge.svg?branch=master
[tests-IntrinsicModules-url]: https://github.com/homalg-project/IntrinsicModules/actions?query=workflow%3ATests+branch%3Amaster

[codecov-IntrinsicModules-img]: https://codecov.io/gh/homalg-project/IntrinsicModules/branch/master/graph/badge.svg
[codecov-IntrinsicModules-url]: https://codecov.io/gh/homalg-project/IntrinsicModules

[docs-InternalModules-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-InternalModules-url]: https://homalg-project.github.io/InternalModules/doc/chap0_mj.html

[tests-InternalModules-img]: https://github.com/homalg-project/InternalModules/workflows/Tests/badge.svg?branch=master
[tests-InternalModules-url]: https://github.com/homalg-project/InternalModules/actions?query=workflow%3ATests+branch%3Amaster

[codecov-InternalModules-img]: https://codecov.io/gh/homalg-project/InternalModules/branch/master/graph/badge.svg
[codecov-InternalModules-url]: https://codecov.io/gh/homalg-project/InternalModules

[docs-LazyCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-LazyCategories-url]: https://homalg-project.github.io/LazyCategories/doc/chap0_mj.html

[tests-LazyCategories-img]: https://github.com/homalg-project/LazyCategories/workflows/Tests/badge.svg?branch=master
[tests-LazyCategories-url]: https://github.com/homalg-project/LazyCategories/actions?query=workflow%3ATests+branch%3Amaster

[codecov-LazyCategories-img]: https://codecov.io/gh/homalg-project/LazyCategories/branch/master/graph/badge.svg
[codecov-LazyCategories-url]: https://codecov.io/gh/homalg-project/LazyCategories

[docs-Locales-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-Locales-url]: https://homalg-project.github.io/Locales/doc/chap0_mj.html

[tests-Locales-img]: https://github.com/homalg-project/Locales/workflows/Tests/badge.svg?branch=master
[tests-Locales-url]: https://github.com/homalg-project/Locales/actions?query=workflow%3ATests+branch%3Amaster

[codecov-Locales-img]: https://codecov.io/gh/homalg-project/Locales/branch/master/graph/badge.svg
[codecov-Locales-url]: https://codecov.io/gh/homalg-project/Locales

[tests-QPA2-img]: https://github.com/homalg-project/QPA2/workflows/Tests/badge.svg?branch=master
[tests-QPA2-url]: https://github.com/homalg-project/QPA2/actions?query=workflow%3ATests+branch%3Amaster

[codecov-QPA2-img]: https://codecov.io/gh/homalg-project/QPA2/branch/master/graph/badge.svg
[codecov-QPA2-url]: https://codecov.io/gh/homalg-project/QPA2

[docs-SubcategoriesForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-SubcategoriesForCAP-url]: https://homalg-project.github.io/SubcategoriesForCAP/doc/chap0_mj.html

[tests-SubcategoriesForCAP-img]: https://github.com/homalg-project/SubcategoriesForCAP/workflows/Tests/badge.svg?branch=master
[tests-SubcategoriesForCAP-url]: https://github.com/homalg-project/SubcategoriesForCAP/actions?query=workflow%3ATests+branch%3Amaster

[codecov-SubcategoriesForCAP-img]: https://codecov.io/gh/homalg-project/SubcategoriesForCAP/branch/master/graph/badge.svg
[codecov-SubcategoriesForCAP-url]: https://codecov.io/gh/homalg-project/SubcategoriesForCAP

[docs-Toposes-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-Toposes-url]: https://homalg-project.github.io/Toposes/doc/chap0_mj.html

[tests-Toposes-img]: https://github.com/homalg-project/Toposes/workflows/Tests/badge.svg?branch=master
[tests-Toposes-url]: https://github.com/homalg-project/Toposes/actions?query=workflow%3ATests+branch%3Amaster

[codecov-Toposes-img]: https://codecov.io/gh/homalg-project/Toposes/branch/master/graph/badge.svg
[codecov-Toposes-url]: https://codecov.io/gh/homalg-project/Toposes

[docs-WrapperCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-WrapperCategories-url]: https://homalg-project.github.io/WrapperCategories/doc/chap0_mj.html

[tests-WrapperCategories-img]: https://github.com/homalg-project/WrapperCategories/workflows/Tests/badge.svg?branch=master
[tests-WrapperCategories-url]: https://github.com/homalg-project/WrapperCategories/actions?query=workflow%3ATests+branch%3Amaster

[codecov-WrapperCategories-img]: https://codecov.io/gh/homalg-project/WrapperCategories/branch/master/graph/badge.svg
[codecov-WrapperCategories-url]: https://codecov.io/gh/homalg-project/WrapperCategories

[docs-ZariskiFrames-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[docs-ZariskiFrames-url]: https://homalg-project.github.io/ZariskiFrames/doc/chap0_mj.html

[tests-ZariskiFrames-img]: https://github.com/homalg-project/ZariskiFrames/workflows/Tests/badge.svg?branch=master
[tests-ZariskiFrames-url]: https://github.com/homalg-project/ZariskiFrames/actions?query=workflow%3ATests+branch%3Amaster

[codecov-ZariskiFrames-img]: https://codecov.io/gh/homalg-project/ZariskiFrames/branch/master/graph/badge.svg
[codecov-ZariskiFrames-url]: https://codecov.io/gh/homalg-project/ZariskiFrames

<!-- END CAP_project USED_BY -->

---

<b id="f1">1</b> [Kernel: Documentation of the specific limit](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X7DCD99628504B810). [↩](#a1)<br>
<b id="f2">2</b> [Kernel: Specitfication of the specific limit](https://github.com/homalg-project/CAP_project/blob/master/CAP/gap/MethodRecord.gi#L265). [↩](#a2)<br>
<b id="f3">3</b> This is wrong in other doctrines like [pre-Abelain](https://ncatlab.org/nlab/show/pre-abelian+category), and does not even make sense in doctrines without kernels and cokernels. [↩](#a3)<br>
<b id="f4">4</b> Again, this is wrong in other doctrines like [pre-Abelain](https://ncatlab.org/nlab/show/pre-abelian+category). [↩](#a4)<br>
<b id="f5">5</b> One can [view a doctrine as a (specific) 2-category](https://ncatlab.org/nlab/show/doctrine#as_2categories) and the category of doctrines as a 3-category of 2-categories.

<!-- BEGIN FOOTER -->

[GAP]: https://www.gap-system.org/

[CAP_project]: https://github.com/homalg-project/CAP_project/

[CAP]: https://github.com/homalg-project/CAP_project/tree/master/CAP/

[MonoidalCategories]: https://github.com/homalg-project/CAP_project/tree/master/MonoidalCategories/

[TriangulatedCategories]: https://github.com/homalg-project/HigherHomologicalAlgebra/tree/master/TriangulatedCategories/

[Toposes]: https://github.com/homalg-project/Toposes/

[Locales]: https://github.com/homalg-project/Locales

[doctrine]: https://ncatlab.org/nlab/show/doctrine/

[thin]: https://ncatlab.org/nlab/show/thin+category/

<!-- END FOOTER -->