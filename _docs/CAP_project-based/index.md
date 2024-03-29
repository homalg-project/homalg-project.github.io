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
   * There are several [CAP-based packages](#packages-part-of-or-based-on-cap_project) that define various [***categorical doctrines***](doctrines).
   * Defining a [doctrine][doctrine] means several things:
       1. **Type specification** of all the categorical operations which are required by the [doctrine][doctrine]: In particular this means specifying those operations involved in the definition of a certain (co)limit (e.g., a [kernel](https://ncatlab.org/nlab/show/kernel)) which exists in the [doctrine][doctrine] (e.g., [Abelian category](https://ncatlab.org/nlab/show/abelian+category)). This includes the specification of the input and output<sup id="a1">[1](#f1),</sup><sup id="a2">[2](#f2)</sup> of each such operation. Specifying a certain limit means specifying all operations involved in the definition of that limit. <br>
          For example, specifying "[kernel](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X7DCD99628504B810)" means specifying all operations entering the definition of the "kernel":
           - [`KernelObject`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X82EAD3357C9FE4C8)<sup id="a3">[3](#f3)</sup>,
           - [`KernelEmbedding`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X8430666980D732FB)<sup id="a4">[4](#f4)</sup>,
           - [`KernelLift`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X851623317C59DDE5)<sup id="a5">[5](#f5)</sup>.
       2. **Doctrine-specific derivations**  of categorical operations from other ones: For example in an Abelian category the [`LiftAlongMonomorphism`](https://homalg-project.github.io/CAP_project/CAP/doc/chap3_mj.html#X83CDF65582CD9921) can be [derived](https://github.com/homalg-project/CAP_project/blob/85d19bd33e1e3d8971d79f13cf814a5210de3392/CAP/gap/DerivedMethods.gi#L1641-L1645) from<sup id="a6">[6](#f6)</sup>
           + [`CokernelProjection`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X78948D7A7B52AB31),
           + [`KernelLift`](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X851623317C59DDE5),
           + [`Compose`](https://homalg-project.github.io/CAP_project/CAP/doc/chap3_mj.html#X8244F7A0868BE27D),
           + [`Inverse`](https://homalg-project.github.io/CAP_project/CAP/doc/chap3_mj.html#X864F84C47DC1A620).

           This is wrong in other doctrines like [pre-Abelian](https://ncatlab.org/nlab/show/pre-abelian+category), and does not even make sense in doctrines without kernels and cokernels.
       3. **Doctrine-specific logical implications**: For example, in an Abelian category the algorithm `IsIsomorphism( ImageEmbedding( α ) )` is [equivalent](https://github.com/homalg-project/CAP_project/blob/85d19bd33e1e3d8971d79f13cf814a5210de3392/CAP/LogicForCategories/PropositionsForAbelianCategories.tex#L17-L29) to the algorithm `IsEpimorphism( α )`. Again, this is wrong in other doctrines like [pre-Abelian](https://ncatlab.org/nlab/show/pre-abelian+category).
   * Even if [GAP][GAP] (automatically) organizes the doctrines in hierarchies, the relations among the category (instances) fulfilling these doctrines are much richer than these hierarchies.<sup id="a6">[6](#f6)</sup> These relations are given by several functors, natural transformations between (parallel) functors, and adjunctions (also described by natural transformations) between (anti-parallel) functors. <br>
     For example, in set-theoretic modelling of mathematics one would say that a group *is* a monoid (in which each element is invertible). In category-theoretic modelling of mathematics one would say that there is a fully faithful forgetful functor from the category of groups to that of monoids which has a left adjoint *and* a right adjoint:
      + The left adjoint adds formal inverses to the monoid (Grothendieck construction in the commutative case).
      + The right adjoint maps a monoid to its group of units.

## Category constructors and building towers of categories

The [CAP-based packages](#packages-part-of-or-based-on-cap_project) provide various [***category constructors***](constructors) which take a combinatorial or algebraic data structure, or even a category or several categories (of a certain doctrine) as input and provide another category (of a possibly different doctrine) as output. The true strength of [CAP][CAP] is that it allows concatenating these category constructor to build arbitrary high towers.

## Functors and natural transformations

The [CAP-based packages](#packages-part-of-or-based-on-cap_project) provide various functors between these categories as well as natural transformations between (parallel) functors.

## CompilerForCAP

[CompilerForCAP][CompilerForCAP] should be able to use the logical rules valid in the various doctrines to compile these towers of categories ---built by applying multiple category constructors--- and produce highly efficient (parallel) code (ultimately in [HPC-GAP](https://www.gap-system.org/Manuals/doc/hpc/chap0_mj.html)/[Julia](https://julialang.org/)).

<!-- BEGIN CAP_project USED_BY -->
## Packages part of or based on [CAP_project](https://homalg-project.github.io/prj/CAP_project):

| Name | Description | Documentation | Build Status | Code Coverage | Status |
| ---- | ----------- | ------------- | ------------ | ------------- | ------ |
| [CAP](https://homalg-project.github.io/pkg/CAP) | Categories, Algorithms, Programming | [![HTML stable documentation][html-CAP-img]][html-CAP-url] [![PDF stable documentation][pdf-CAP-img]][pdf-CAP-url] | [![Build Status][tests-CAP-img]][tests-CAP-url] | [![Code Coverage][codecov-CAP-img]][codecov-CAP-url] | [deposited][deposited-CAP-url] |
| [Algebroids](https://homalg-project.github.io/pkg/Algebroids) | Algebroids and bialgebroids as preadditive categories generated by enhanced quivers | [![HTML stable documentation][html-Algebroids-img]][html-Algebroids-url] [![PDF stable documentation][pdf-Algebroids-img]][pdf-Algebroids-url] | [![Build Status][tests-Algebroids-img]][tests-Algebroids-url] | [![Code Coverage][codecov-Algebroids-img]][codecov-Algebroids-url] | dev |
| [ActionsForCAP](https://homalg-project.github.io/pkg/ActionsForCAP) | Actions and Coactions for CAP | [![HTML stable documentation][html-ActionsForCAP-img]][html-ActionsForCAP-url] [![PDF stable documentation][pdf-ActionsForCAP-img]][pdf-ActionsForCAP-url] | [![Build Status][tests-ActionsForCAP-img]][tests-ActionsForCAP-url] | [![Code Coverage][codecov-ActionsForCAP-img]][codecov-ActionsForCAP-url] | dev |
| [AttributeCategoryForCAP](https://homalg-project.github.io/pkg/AttributeCategoryForCAP) | Automatic enhancement with attributes of a CAP category | [![HTML stable documentation][html-AttributeCategoryForCAP-img]][html-AttributeCategoryForCAP-url] [![PDF stable documentation][pdf-AttributeCategoryForCAP-img]][pdf-AttributeCategoryForCAP-url] | [![Build Status][tests-AttributeCategoryForCAP-img]][tests-AttributeCategoryForCAP-url] | [![Code Coverage][codecov-AttributeCategoryForCAP-img]][codecov-AttributeCategoryForCAP-url] | dev |
| [Bicomplexes](https://homalg-project.github.io/pkg/Bicomplexes) | Bicomplexes for Abelian categories | [![HTML stable documentation][html-Bicomplexes-img]][html-Bicomplexes-url] [![PDF stable documentation][pdf-Bicomplexes-img]][pdf-Bicomplexes-url] | [![Build Status][tests-Bicomplexes-img]][tests-Bicomplexes-url] | [![Code Coverage][codecov-Bicomplexes-img]][codecov-Bicomplexes-url] | dev |
| [CartesianCategories](https://homalg-project.github.io/pkg/CartesianCategories) | Cartesian and cocartesian categories and various subdoctrines | [![HTML stable documentation][html-CartesianCategories-img]][html-CartesianCategories-url] [![PDF stable documentation][pdf-CartesianCategories-img]][pdf-CartesianCategories-url] | [![Build Status][tests-CartesianCategories-img]][tests-CartesianCategories-url] | [![Code Coverage][codecov-CartesianCategories-img]][codecov-CartesianCategories-url] | dev |
| [CategoriesWithAmbientObjects](https://homalg-project.github.io/pkg/CategoriesWithAmbientObjects) | Categories with objects having ambient objects | [![HTML stable documentation][html-CategoriesWithAmbientObjects-img]][html-CategoriesWithAmbientObjects-url] [![PDF stable documentation][pdf-CategoriesWithAmbientObjects-img]][pdf-CategoriesWithAmbientObjects-url] | [![Build Status][tests-CategoriesWithAmbientObjects-img]][tests-CategoriesWithAmbientObjects-url] | [![Code Coverage][codecov-CategoriesWithAmbientObjects-img]][codecov-CategoriesWithAmbientObjects-url] | dev |
| [CatReps](https://homalg-project.github.io/pkg/CatReps) | Representations and cohomology of finite categories | [![HTML stable documentation][html-CatReps-img]][html-CatReps-url] [![PDF stable documentation][pdf-CatReps-img]][pdf-CatReps-url] | [![Build Status][tests-CatReps-img]][tests-CatReps-url] | [![Code Coverage][codecov-CatReps-img]][codecov-CatReps-url] | dev |
| [CompilerForCAP](https://homalg-project.github.io/pkg/CompilerForCAP) | Speed up and verify categorical algorithms | [![HTML stable documentation][html-CompilerForCAP-img]][html-CompilerForCAP-url] [![PDF stable documentation][pdf-CompilerForCAP-img]][pdf-CompilerForCAP-url] | [![Build Status][tests-CompilerForCAP-img]][tests-CompilerForCAP-url] | [![Code Coverage][codecov-CompilerForCAP-img]][codecov-CompilerForCAP-url] | dev |
| [ComplexesAndFilteredObjectsForCAP](https://homalg-project.github.io/pkg/ComplexesAndFilteredObjectsForCAP) | Implementation of complexes, cocomplexes and filtered objects for CAP | [![HTML stable documentation][html-ComplexesAndFilteredObjectsForCAP-img]][html-ComplexesAndFilteredObjectsForCAP-url] [![PDF stable documentation][pdf-ComplexesAndFilteredObjectsForCAP-img]][pdf-ComplexesAndFilteredObjectsForCAP-url] | [![Build Status][tests-ComplexesAndFilteredObjectsForCAP-img]][tests-ComplexesAndFilteredObjectsForCAP-url] | [![Code Coverage][codecov-ComplexesAndFilteredObjectsForCAP-img]][codecov-ComplexesAndFilteredObjectsForCAP-url] | dev |
| [ComplexesCategories](https://homalg-project.github.io/pkg/ComplexesCategories) | Category of (co)chain complexes of an additive category | [![HTML stable documentation][html-ComplexesCategories-img]][html-ComplexesCategories-url] [![PDF stable documentation][pdf-ComplexesCategories-img]][pdf-ComplexesCategories-url] | [![Build Status][tests-ComplexesCategories-img]][tests-ComplexesCategories-url] | [![Code Coverage][codecov-ComplexesCategories-img]][codecov-ComplexesCategories-url] | dev |
| [DerivedCategories](https://homalg-project.github.io/pkg/DerivedCategories) | Derived categories of Abelian categories | [![HTML stable documentation][html-DerivedCategories-img]][html-DerivedCategories-url] [![PDF stable documentation][pdf-DerivedCategories-img]][pdf-DerivedCategories-url] | [![Build Status][tests-DerivedCategories-img]][tests-DerivedCategories-url] | [![Code Coverage][codecov-DerivedCategories-img]][codecov-DerivedCategories-url] | dev |
| [ExteriorPowersCategories](https://homalg-project.github.io/pkg/ExteriorPowersCategories) | The graded category of exterior powers of objects of a given Ab-category | [![HTML stable documentation][html-ExteriorPowersCategories-img]][html-ExteriorPowersCategories-url] [![PDF stable documentation][pdf-ExteriorPowersCategories-img]][pdf-ExteriorPowersCategories-url] | [![Build Status][tests-ExteriorPowersCategories-img]][tests-ExteriorPowersCategories-url] | [![Code Coverage][codecov-ExteriorPowersCategories-img]][codecov-ExteriorPowersCategories-url] | dev |
| [FinSetsForCAP](https://homalg-project.github.io/pkg/FinSetsForCAP) | The elementary topos of (skeletal) finite sets | [![HTML stable documentation][html-FinSetsForCAP-img]][html-FinSetsForCAP-url] [![PDF stable documentation][pdf-FinSetsForCAP-img]][pdf-FinSetsForCAP-url] | [![Build Status][tests-FinSetsForCAP-img]][tests-FinSetsForCAP-url] | [![Code Coverage][codecov-FinSetsForCAP-img]][codecov-FinSetsForCAP-url] | dev |
| [FinGSetsForCAP](https://homalg-project.github.io/pkg/FinGSetsForCAP) | The elementary topos of (skeletal) finite G-sets | [![HTML stable documentation][html-FinGSetsForCAP-img]][html-FinGSetsForCAP-url] [![PDF stable documentation][pdf-FinGSetsForCAP-img]][pdf-FinGSetsForCAP-url] | [![Build Status][tests-FinGSetsForCAP-img]][tests-FinGSetsForCAP-url] | [![Code Coverage][codecov-FinGSetsForCAP-img]][codecov-FinGSetsForCAP-url] | dev |
| [FiniteCocompletions](https://homalg-project.github.io/pkg/FiniteCocompletions) | Finite (co)product/(co)limit (co)completions | [![HTML stable documentation][html-FiniteCocompletions-img]][html-FiniteCocompletions-url] [![PDF stable documentation][pdf-FiniteCocompletions-img]][pdf-FiniteCocompletions-url] | [![Build Status][tests-FiniteCocompletions-img]][tests-FiniteCocompletions-url] | [![Code Coverage][codecov-FiniteCocompletions-img]][codecov-FiniteCocompletions-url] | dev |
| [FpCategories](https://homalg-project.github.io/pkg/FpCategories) | Finitely presented categories by generating quivers and relations | [![HTML stable documentation][html-FpCategories-img]][html-FpCategories-url] [![PDF stable documentation][pdf-FpCategories-img]][pdf-FpCategories-url] | [![Build Status][tests-FpCategories-img]][tests-FpCategories-url] | [![Code Coverage][codecov-FpCategories-img]][codecov-FpCategories-url] | dev |
| [FreydCategoriesForCAP](https://homalg-project.github.io/pkg/FreydCategoriesForCAP) | Freyd categories - Formal (co)kernels for additive categories | [![HTML stable documentation][html-FreydCategoriesForCAP-img]][html-FreydCategoriesForCAP-url] [![PDF stable documentation][pdf-FreydCategoriesForCAP-img]][pdf-FreydCategoriesForCAP-url] | [![Build Status][tests-FreydCategoriesForCAP-img]][tests-FreydCategoriesForCAP-url] | [![Code Coverage][codecov-FreydCategoriesForCAP-img]][codecov-FreydCategoriesForCAP-url] | dev |
| [FunctorCategories](https://homalg-project.github.io/pkg/FunctorCategories) | Categories of functors | [![HTML stable documentation][html-FunctorCategories-img]][html-FunctorCategories-url] [![PDF stable documentation][pdf-FunctorCategories-img]][pdf-FunctorCategories-url] | [![Build Status][tests-FunctorCategories-img]][tests-FunctorCategories-url] | [![Code Coverage][codecov-FunctorCategories-img]][codecov-FunctorCategories-url] | dev |
| [GeneralizedMorphismsForCAP](https://homalg-project.github.io/pkg/GeneralizedMorphismsForCAP) | Implementations of generalized morphisms for the CAP project | [![HTML stable documentation][html-GeneralizedMorphismsForCAP-img]][html-GeneralizedMorphismsForCAP-url] [![PDF stable documentation][pdf-GeneralizedMorphismsForCAP-img]][pdf-GeneralizedMorphismsForCAP-url] | [![Build Status][tests-GeneralizedMorphismsForCAP-img]][tests-GeneralizedMorphismsForCAP-url] | [![Code Coverage][codecov-GeneralizedMorphismsForCAP-img]][codecov-GeneralizedMorphismsForCAP-url] | [deposited][deposited-GeneralizedMorphismsForCAP-url] |
| [GradedCategories](https://homalg-project.github.io/pkg/GradedCategories) | Graded closures of categories | [![HTML stable documentation][html-GradedCategories-img]][html-GradedCategories-url] [![PDF stable documentation][pdf-GradedCategories-img]][pdf-GradedCategories-url] | [![Build Status][tests-GradedCategories-img]][tests-GradedCategories-url] | [![Code Coverage][codecov-GradedCategories-img]][codecov-GradedCategories-url] | dev |
| [GradedModulePresentationsForCAP](https://homalg-project.github.io/pkg/GradedModulePresentationsForCAP) | Presentations for graded modules | [![HTML stable documentation][html-GradedModulePresentationsForCAP-img]][html-GradedModulePresentationsForCAP-url] [![PDF stable documentation][pdf-GradedModulePresentationsForCAP-img]][pdf-GradedModulePresentationsForCAP-url] | [![Build Status][tests-GradedModulePresentationsForCAP-img]][tests-GradedModulePresentationsForCAP-url] | [![Code Coverage][codecov-GradedModulePresentationsForCAP-img]][codecov-GradedModulePresentationsForCAP-url] | dev |
| [GroupRepresentationsForCAP](https://homalg-project.github.io/pkg/GroupRepresentationsForCAP) | Skeletal category of group representations for CAP | [![HTML stable documentation][html-GroupRepresentationsForCAP-img]][html-GroupRepresentationsForCAP-url] [![PDF stable documentation][pdf-GroupRepresentationsForCAP-img]][pdf-GroupRepresentationsForCAP-url] | [![Build Status][tests-GroupRepresentationsForCAP-img]][tests-GroupRepresentationsForCAP-url] | [![Code Coverage][codecov-GroupRepresentationsForCAP-img]][codecov-GroupRepresentationsForCAP-url] | dev |
| [HeckeCategories](https://homalg-project.github.io/pkg/HeckeCategories) | Categorification of Hecke algebras | [![HTML stable documentation][html-HeckeCategories-img]][html-HeckeCategories-url] [![PDF stable documentation][pdf-HeckeCategories-img]][pdf-HeckeCategories-url] | [![Build Status][tests-HeckeCategories-img]][tests-HeckeCategories-url] | [![Code Coverage][codecov-HeckeCategories-img]][codecov-HeckeCategories-url] | dev |
| [HomologicalAlgebraForCAP](https://homalg-project.github.io/pkg/HomologicalAlgebraForCAP) | Homological algebra algorithms for CAP | [![HTML stable documentation][html-HomologicalAlgebraForCAP-img]][html-HomologicalAlgebraForCAP-url] [![PDF stable documentation][pdf-HomologicalAlgebraForCAP-img]][pdf-HomologicalAlgebraForCAP-url] | [![Build Status][tests-HomologicalAlgebraForCAP-img]][tests-HomologicalAlgebraForCAP-url] | [![Code Coverage][codecov-HomologicalAlgebraForCAP-img]][codecov-HomologicalAlgebraForCAP-url] | dev |
| [HomotopyCategories](https://homalg-project.github.io/pkg/HomotopyCategories) | Homotopy categories of additive categories | [![HTML stable documentation][html-HomotopyCategories-img]][html-HomotopyCategories-url] [![PDF stable documentation][pdf-HomotopyCategories-img]][pdf-HomotopyCategories-url] | [![Build Status][tests-HomotopyCategories-img]][tests-HomotopyCategories-url] | [![Code Coverage][codecov-HomotopyCategories-img]][codecov-HomotopyCategories-url] | dev |
| [InternalExteriorAlgebraForCAP](https://homalg-project.github.io/pkg/InternalExteriorAlgebraForCAP) | Constructions for Modules over the Internal Exterior Algebra for CAP | [![HTML stable documentation][html-InternalExteriorAlgebraForCAP-img]][html-InternalExteriorAlgebraForCAP-url] [![PDF stable documentation][pdf-InternalExteriorAlgebraForCAP-img]][pdf-InternalExteriorAlgebraForCAP-url] | [![Build Status][tests-InternalExteriorAlgebraForCAP-img]][tests-InternalExteriorAlgebraForCAP-url] | [![Code Coverage][codecov-InternalExteriorAlgebraForCAP-img]][codecov-InternalExteriorAlgebraForCAP-url] | dev |
| [InternalModules](https://homalg-project.github.io/pkg/InternalModules) | Modules over internal algebras | [![HTML stable documentation][html-InternalModules-img]][html-InternalModules-url] [![PDF stable documentation][pdf-InternalModules-img]][pdf-InternalModules-url] | [![Build Status][tests-InternalModules-img]][tests-InternalModules-url] | [![Code Coverage][codecov-InternalModules-img]][codecov-InternalModules-url] | dev |
| [IntrinsicCategories](https://homalg-project.github.io/pkg/IntrinsicCategories) | Intrinsic categories for CAP | [![HTML stable documentation][html-IntrinsicCategories-img]][html-IntrinsicCategories-url] [![PDF stable documentation][pdf-IntrinsicCategories-img]][pdf-IntrinsicCategories-url] | [![Build Status][tests-IntrinsicCategories-img]][tests-IntrinsicCategories-url] | [![Code Coverage][codecov-IntrinsicCategories-img]][codecov-IntrinsicCategories-url] | dev |
| [IntrinsicGradedModules](https://homalg-project.github.io/pkg/IntrinsicGradedModules) | Finitely presented graded modules over computable graded rings allowing multiple presentations and the notion of elements | [![HTML stable documentation][html-IntrinsicGradedModules-img]][html-IntrinsicGradedModules-url] [![PDF stable documentation][pdf-IntrinsicGradedModules-img]][pdf-IntrinsicGradedModules-url] | [![Build Status][tests-IntrinsicGradedModules-img]][tests-IntrinsicGradedModules-url] | [![Code Coverage][codecov-IntrinsicGradedModules-img]][codecov-IntrinsicGradedModules-url] | dev |
| [IntrinsicModules](https://homalg-project.github.io/pkg/IntrinsicModules) | Finitely presented modules over computable rings allowing multiple presentations and the notion of elements | [![HTML stable documentation][html-IntrinsicModules-img]][html-IntrinsicModules-url] [![PDF stable documentation][pdf-IntrinsicModules-img]][pdf-IntrinsicModules-url] | [![Build Status][tests-IntrinsicModules-img]][tests-IntrinsicModules-url] | [![Code Coverage][codecov-IntrinsicModules-img]][codecov-IntrinsicModules-url] | dev |
| [LazyCategories](https://homalg-project.github.io/pkg/LazyCategories) | Construct an equivalent lazy category out of a CAP category | [![HTML stable documentation][html-LazyCategories-img]][html-LazyCategories-url] [![PDF stable documentation][pdf-LazyCategories-img]][pdf-LazyCategories-url] | [![Build Status][tests-LazyCategories-img]][tests-LazyCategories-url] | [![Code Coverage][codecov-LazyCategories-img]][codecov-LazyCategories-url] | dev |
| [LinearAlgebraForCAP](https://homalg-project.github.io/pkg/LinearAlgebraForCAP) | Category of Matrices over a Field for CAP | [![HTML stable documentation][html-LinearAlgebraForCAP-img]][html-LinearAlgebraForCAP-url] [![PDF stable documentation][pdf-LinearAlgebraForCAP-img]][pdf-LinearAlgebraForCAP-url] | [![Build Status][tests-LinearAlgebraForCAP-img]][tests-LinearAlgebraForCAP-url] | [![Code Coverage][codecov-LinearAlgebraForCAP-img]][codecov-LinearAlgebraForCAP-url] | [deposited][deposited-LinearAlgebraForCAP-url] |
| [Locales](https://homalg-project.github.io/pkg/Locales) | Locales, frames, coframes, meet semi-lattices of locally closed subsets, and Boolean algebras of constructible sets | [![HTML stable documentation][html-Locales-img]][html-Locales-url] [![PDF stable documentation][pdf-Locales-img]][pdf-Locales-url] | [![Build Status][tests-Locales-img]][tests-Locales-url] | [![Code Coverage][codecov-Locales-img]][codecov-Locales-url] | dev |
| [ModulePresentationsForCAP](https://homalg-project.github.io/pkg/ModulePresentationsForCAP) | Category R-pres for CAP | [![HTML stable documentation][html-ModulePresentationsForCAP-img]][html-ModulePresentationsForCAP-url] [![PDF stable documentation][pdf-ModulePresentationsForCAP-img]][pdf-ModulePresentationsForCAP-url] | [![Build Status][tests-ModulePresentationsForCAP-img]][tests-ModulePresentationsForCAP-url] | [![Code Coverage][codecov-ModulePresentationsForCAP-img]][codecov-ModulePresentationsForCAP-url] | [deposited][deposited-ModulePresentationsForCAP-url] |
| [ModulesOverLocalRingsForCAP](https://homalg-project.github.io/pkg/ModulesOverLocalRingsForCAP) | Category of modules over a local ring modeled by Serre quotients for CAP | [![HTML stable documentation][html-ModulesOverLocalRingsForCAP-img]][html-ModulesOverLocalRingsForCAP-url] [![PDF stable documentation][pdf-ModulesOverLocalRingsForCAP-img]][pdf-ModulesOverLocalRingsForCAP-url] | [![Build Status][tests-ModulesOverLocalRingsForCAP-img]][tests-ModulesOverLocalRingsForCAP-url] | [![Code Coverage][codecov-ModulesOverLocalRingsForCAP-img]][codecov-ModulesOverLocalRingsForCAP-url] | dev |
| [MonoidalCategories](https://homalg-project.github.io/pkg/MonoidalCategories) | Monoidal and monoidal (co)closed categories | [![HTML stable documentation][html-MonoidalCategories-img]][html-MonoidalCategories-url] [![PDF stable documentation][pdf-MonoidalCategories-img]][pdf-MonoidalCategories-url] | [![Build Status][tests-MonoidalCategories-img]][tests-MonoidalCategories-url] | [![Code Coverage][codecov-MonoidalCategories-img]][codecov-MonoidalCategories-url] | [deposited][deposited-MonoidalCategories-url] |
| [PreSheaves](https://homalg-project.github.io/pkg/PreSheaves) | Categories of (co)presheaves | [![HTML stable documentation][html-PreSheaves-img]][html-PreSheaves-url] [![PDF stable documentation][pdf-PreSheaves-img]][pdf-PreSheaves-url] | [![Build Status][tests-PreSheaves-img]][tests-PreSheaves-url] | [![Code Coverage][codecov-PreSheaves-img]][codecov-PreSheaves-url] | dev |
| [QPA2](https://homalg-project.github.io/pkg/QPA2) | Quivers and Path Algebras | N/A | N/A | N/A | dev |
| [QuotientCategories](https://homalg-project.github.io/pkg/QuotientCategories) | Quotient categories | [![HTML stable documentation][html-QuotientCategories-img]][html-QuotientCategories-url] [![PDF stable documentation][pdf-QuotientCategories-img]][pdf-QuotientCategories-url] | [![Build Status][tests-QuotientCategories-img]][tests-QuotientCategories-url] | [![Code Coverage][codecov-QuotientCategories-img]][codecov-QuotientCategories-url] | dev |
| [StableCategories](https://homalg-project.github.io/pkg/StableCategories) | Stable categories of additive categories | [![HTML stable documentation][html-StableCategories-img]][html-StableCategories-url] [![PDF stable documentation][pdf-StableCategories-img]][pdf-StableCategories-url] | [![Build Status][tests-StableCategories-img]][tests-StableCategories-url] | [![Code Coverage][codecov-StableCategories-img]][codecov-StableCategories-url] | dev |
| [SubcategoriesForCAP](https://homalg-project.github.io/pkg/SubcategoriesForCAP) | Subcategory and other related constructors for CAP categories | [![HTML stable documentation][html-SubcategoriesForCAP-img]][html-SubcategoriesForCAP-url] [![PDF stable documentation][pdf-SubcategoriesForCAP-img]][pdf-SubcategoriesForCAP-url] | [![Build Status][tests-SubcategoriesForCAP-img]][tests-SubcategoriesForCAP-url] | [![Code Coverage][codecov-SubcategoriesForCAP-img]][codecov-SubcategoriesForCAP-url] | dev |
| [ToolsForCategoricalTowers](https://homalg-project.github.io/pkg/ToolsForCategoricalTowers) | Tools for CategoricalTowers | [![HTML stable documentation][html-ToolsForCategoricalTowers-img]][html-ToolsForCategoricalTowers-url] [![PDF stable documentation][pdf-ToolsForCategoricalTowers-img]][pdf-ToolsForCategoricalTowers-url] | [![Build Status][tests-ToolsForCategoricalTowers-img]][tests-ToolsForCategoricalTowers-url] | [![Code Coverage][codecov-ToolsForCategoricalTowers-img]][codecov-ToolsForCategoricalTowers-url] | dev |
| [Toposes](https://homalg-project.github.io/pkg/Toposes) | Elementary toposes | [![HTML stable documentation][html-Toposes-img]][html-Toposes-url] [![PDF stable documentation][pdf-Toposes-img]][pdf-Toposes-url] | [![Build Status][tests-Toposes-img]][tests-Toposes-url] | [![Code Coverage][codecov-Toposes-img]][codecov-Toposes-url] | dev |
| [ToricSheaves](https://homalg-project.github.io/pkg/ToricSheaves) | Toric sheaves as Serre quotients | [![HTML stable documentation][html-ToricSheaves-img]][html-ToricSheaves-url] [![PDF stable documentation][pdf-ToricSheaves-img]][pdf-ToricSheaves-url] | [![Build Status][tests-ToricSheaves-img]][tests-ToricSheaves-url] | [![Code Coverage][codecov-ToricSheaves-img]][codecov-ToricSheaves-url] | dev |
| [TriangulatedCategories](https://homalg-project.github.io/pkg/TriangulatedCategories) | Framework for triangulated categories | [![HTML stable documentation][html-TriangulatedCategories-img]][html-TriangulatedCategories-url] [![PDF stable documentation][pdf-TriangulatedCategories-img]][pdf-TriangulatedCategories-url] | [![Build Status][tests-TriangulatedCategories-img]][tests-TriangulatedCategories-url] | [![Code Coverage][codecov-TriangulatedCategories-img]][codecov-TriangulatedCategories-url] | dev |
| [ZariskiFrames](https://homalg-project.github.io/pkg/ZariskiFrames) | (Co)frames/Locales of Zariski closed/open subsets of affine, projective, or toric varieties | [![HTML stable documentation][html-ZariskiFrames-img]][html-ZariskiFrames-url] [![PDF stable documentation][pdf-ZariskiFrames-img]][pdf-ZariskiFrames-url] | [![Build Status][tests-ZariskiFrames-img]][tests-ZariskiFrames-url] | [![Code Coverage][codecov-ZariskiFrames-img]][codecov-ZariskiFrames-url] | dev |
| [ZXCalculusForCAP](https://homalg-project.github.io/pkg/ZXCalculusForCAP) | The category of ZX-diagrams | [![HTML stable documentation][html-ZXCalculusForCAP-img]][html-ZXCalculusForCAP-url] [![PDF stable documentation][pdf-ZXCalculusForCAP-img]][pdf-ZXCalculusForCAP-url] | [![Build Status][tests-ZXCalculusForCAP-img]][tests-ZXCalculusForCAP-url] | [![Code Coverage][codecov-ZXCalculusForCAP-img]][codecov-ZXCalculusForCAP-url] | dev |

[html-CAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-CAP-url]: https://homalg-project.github.io/CAP_project/CAP/doc/chap0_mj.html

[pdf-CAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-CAP-url]: https://homalg-project.github.io/CAP_project/CAP/download_pdf.html

[tests-CAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-CAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-CAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=CAP
[codecov-CAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/CAP

[deposited-CAP-url]: https://www.gap-system.org/Packages/cap.html

[html-Algebroids-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-Algebroids-url]: https://homalg-project.github.io/CategoricalTowers/Algebroids/doc/chap0_mj.html

[pdf-Algebroids-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-Algebroids-url]: https://homalg-project.github.io/CategoricalTowers/Algebroids/download_pdf.html

[tests-Algebroids-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-Algebroids-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-Algebroids-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=Algebroids
[codecov-Algebroids-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/Algebroids

[html-ActionsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ActionsForCAP-url]: https://homalg-project.github.io/CAP_project/ActionsForCAP/doc/chap0_mj.html

[pdf-ActionsForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ActionsForCAP-url]: https://homalg-project.github.io/CAP_project/ActionsForCAP/download_pdf.html

[tests-ActionsForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ActionsForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ActionsForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=ActionsForCAP
[codecov-ActionsForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/ActionsForCAP

[html-AttributeCategoryForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-AttributeCategoryForCAP-url]: https://homalg-project.github.io/CAP_project/AttributeCategoryForCAP/doc/chap0_mj.html

[pdf-AttributeCategoryForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-AttributeCategoryForCAP-url]: https://homalg-project.github.io/CAP_project/AttributeCategoryForCAP/download_pdf.html

[tests-AttributeCategoryForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-AttributeCategoryForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-AttributeCategoryForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=AttributeCategoryForCAP
[codecov-AttributeCategoryForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/AttributeCategoryForCAP

[html-Bicomplexes-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-Bicomplexes-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/Bicomplexes/doc/chap0_mj.html

[pdf-Bicomplexes-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-Bicomplexes-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/Bicomplexes/download_pdf.html

[tests-Bicomplexes-img]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-Bicomplexes-url]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-Bicomplexes-img]: https://codecov.io/gh/homalg-project/HigherHomologicalAlgebra/branch/master/graph/badge.svg?flag=Bicomplexes
[codecov-Bicomplexes-url]: https://app.codecov.io/gh/homalg-project/HigherHomologicalAlgebra/tree/master/Bicomplexes

[html-CartesianCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-CartesianCategories-url]: https://homalg-project.github.io/CAP_project/CartesianCategories/doc/chap0_mj.html

[pdf-CartesianCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-CartesianCategories-url]: https://homalg-project.github.io/CAP_project/CartesianCategories/download_pdf.html

[tests-CartesianCategories-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-CartesianCategories-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-CartesianCategories-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=CartesianCategories
[codecov-CartesianCategories-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/CartesianCategories

[html-CategoriesWithAmbientObjects-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-CategoriesWithAmbientObjects-url]: https://homalg-project.github.io/CategoricalTowers/CategoriesWithAmbientObjects/doc/chap0_mj.html

[pdf-CategoriesWithAmbientObjects-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-CategoriesWithAmbientObjects-url]: https://homalg-project.github.io/CategoricalTowers/CategoriesWithAmbientObjects/download_pdf.html

[tests-CategoriesWithAmbientObjects-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-CategoriesWithAmbientObjects-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-CategoriesWithAmbientObjects-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=CategoriesWithAmbientObjects
[codecov-CategoriesWithAmbientObjects-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/CategoriesWithAmbientObjects

[html-CatReps-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-CatReps-url]: https://homalg-project.github.io/CategoricalTowers/CatReps/doc/chap0_mj.html

[pdf-CatReps-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-CatReps-url]: https://homalg-project.github.io/CategoricalTowers/CatReps/download_pdf.html

[tests-CatReps-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-CatReps-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-CatReps-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=CatReps
[codecov-CatReps-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/CatReps

[html-CompilerForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-CompilerForCAP-url]: https://homalg-project.github.io/CAP_project/CompilerForCAP/doc/chap0_mj.html

[pdf-CompilerForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-CompilerForCAP-url]: https://homalg-project.github.io/CAP_project/CompilerForCAP/download_pdf.html

[tests-CompilerForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-CompilerForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-CompilerForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=CompilerForCAP
[codecov-CompilerForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/CompilerForCAP

[html-ComplexesAndFilteredObjectsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ComplexesAndFilteredObjectsForCAP-url]: https://homalg-project.github.io/CAP_project/ComplexesAndFilteredObjectsForCAP/doc/chap0_mj.html

[pdf-ComplexesAndFilteredObjectsForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ComplexesAndFilteredObjectsForCAP-url]: https://homalg-project.github.io/CAP_project/ComplexesAndFilteredObjectsForCAP/download_pdf.html

[tests-ComplexesAndFilteredObjectsForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ComplexesAndFilteredObjectsForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ComplexesAndFilteredObjectsForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=ComplexesAndFilteredObjectsForCAP
[codecov-ComplexesAndFilteredObjectsForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/ComplexesAndFilteredObjectsForCAP

[html-ComplexesCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ComplexesCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/ComplexesCategories/doc/chap0_mj.html

[pdf-ComplexesCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ComplexesCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/ComplexesCategories/download_pdf.html

[tests-ComplexesCategories-img]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ComplexesCategories-url]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ComplexesCategories-img]: https://codecov.io/gh/homalg-project/HigherHomologicalAlgebra/branch/master/graph/badge.svg?flag=ComplexesCategories
[codecov-ComplexesCategories-url]: https://app.codecov.io/gh/homalg-project/HigherHomologicalAlgebra/tree/master/ComplexesCategories

[html-DerivedCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-DerivedCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/DerivedCategories/doc/chap0_mj.html

[pdf-DerivedCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-DerivedCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/DerivedCategories/download_pdf.html

[tests-DerivedCategories-img]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-DerivedCategories-url]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-DerivedCategories-img]: https://codecov.io/gh/homalg-project/HigherHomologicalAlgebra/branch/master/graph/badge.svg?flag=DerivedCategories
[codecov-DerivedCategories-url]: https://app.codecov.io/gh/homalg-project/HigherHomologicalAlgebra/tree/master/DerivedCategories

[html-ExteriorPowersCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ExteriorPowersCategories-url]: https://homalg-project.github.io/CategoricalTowers/ExteriorPowersCategories/doc/chap0_mj.html

[pdf-ExteriorPowersCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ExteriorPowersCategories-url]: https://homalg-project.github.io/CategoricalTowers/ExteriorPowersCategories/download_pdf.html

[tests-ExteriorPowersCategories-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ExteriorPowersCategories-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ExteriorPowersCategories-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=ExteriorPowersCategories
[codecov-ExteriorPowersCategories-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/ExteriorPowersCategories

[html-FinSetsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-FinSetsForCAP-url]: https://homalg-project.github.io/FinSetsForCAP/doc/chap0_mj.html

[pdf-FinSetsForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-FinSetsForCAP-url]: https://homalg-project.github.io/FinSetsForCAP/download_pdf.html

[tests-FinSetsForCAP-img]: https://github.com/homalg-project/FinSetsForCAP/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-FinSetsForCAP-url]: https://github.com/homalg-project/FinSetsForCAP/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-FinSetsForCAP-img]: https://codecov.io/gh/homalg-project/FinSetsForCAP/branch/master/graph/badge.svg
[codecov-FinSetsForCAP-url]: https://app.codecov.io/gh/homalg-project/FinSetsForCAP

[html-FinGSetsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-FinGSetsForCAP-url]: https://homalg-project.github.io/FinGSetsForCAP/doc/chap0_mj.html

[pdf-FinGSetsForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-FinGSetsForCAP-url]: https://homalg-project.github.io/FinGSetsForCAP/download_pdf.html

[tests-FinGSetsForCAP-img]: https://github.com/homalg-project/FinGSetsForCAP/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-FinGSetsForCAP-url]: https://github.com/homalg-project/FinGSetsForCAP/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-FinGSetsForCAP-img]: https://codecov.io/gh/homalg-project/FinGSetsForCAP/branch/master/graph/badge.svg
[codecov-FinGSetsForCAP-url]: https://app.codecov.io/gh/homalg-project/FinGSetsForCAP

[html-FiniteCocompletions-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-FiniteCocompletions-url]: https://homalg-project.github.io/CategoricalTowers/FiniteCocompletions/doc/chap0_mj.html

[pdf-FiniteCocompletions-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-FiniteCocompletions-url]: https://homalg-project.github.io/CategoricalTowers/FiniteCocompletions/download_pdf.html

[tests-FiniteCocompletions-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-FiniteCocompletions-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-FiniteCocompletions-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=FiniteCocompletions
[codecov-FiniteCocompletions-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/FiniteCocompletions

[html-FpCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-FpCategories-url]: https://homalg-project.github.io/CategoricalTowers/FpCategories/doc/chap0_mj.html

[pdf-FpCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-FpCategories-url]: https://homalg-project.github.io/CategoricalTowers/FpCategories/download_pdf.html

[tests-FpCategories-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-FpCategories-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-FpCategories-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=FpCategories
[codecov-FpCategories-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/FpCategories

[html-FreydCategoriesForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-FreydCategoriesForCAP-url]: https://homalg-project.github.io/CAP_project/FreydCategoriesForCAP/doc/chap0_mj.html

[pdf-FreydCategoriesForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-FreydCategoriesForCAP-url]: https://homalg-project.github.io/CAP_project/FreydCategoriesForCAP/download_pdf.html

[tests-FreydCategoriesForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-FreydCategoriesForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-FreydCategoriesForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=FreydCategoriesForCAP
[codecov-FreydCategoriesForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/FreydCategoriesForCAP

[html-FunctorCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-FunctorCategories-url]: https://homalg-project.github.io/CategoricalTowers/FunctorCategories/doc/chap0_mj.html

[pdf-FunctorCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-FunctorCategories-url]: https://homalg-project.github.io/CategoricalTowers/FunctorCategories/download_pdf.html

[tests-FunctorCategories-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-FunctorCategories-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-FunctorCategories-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=FunctorCategories
[codecov-FunctorCategories-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/FunctorCategories

[html-GeneralizedMorphismsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-GeneralizedMorphismsForCAP-url]: https://homalg-project.github.io/CAP_project/GeneralizedMorphismsForCAP/doc/chap0_mj.html

[pdf-GeneralizedMorphismsForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-GeneralizedMorphismsForCAP-url]: https://homalg-project.github.io/CAP_project/GeneralizedMorphismsForCAP/download_pdf.html

[tests-GeneralizedMorphismsForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-GeneralizedMorphismsForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-GeneralizedMorphismsForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=GeneralizedMorphismsForCAP
[codecov-GeneralizedMorphismsForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/GeneralizedMorphismsForCAP

[deposited-GeneralizedMorphismsForCAP-url]: https://www.gap-system.org/Packages/generalizedmorphismsforcap.html

[html-GradedCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-GradedCategories-url]: https://homalg-project.github.io/CategoricalTowers/GradedCategories/doc/chap0_mj.html

[pdf-GradedCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-GradedCategories-url]: https://homalg-project.github.io/CategoricalTowers/GradedCategories/download_pdf.html

[tests-GradedCategories-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-GradedCategories-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-GradedCategories-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=GradedCategories
[codecov-GradedCategories-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/GradedCategories

[html-GradedModulePresentationsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-GradedModulePresentationsForCAP-url]: https://homalg-project.github.io/CAP_project/GradedModulePresentationsForCAP/doc/chap0_mj.html

[pdf-GradedModulePresentationsForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-GradedModulePresentationsForCAP-url]: https://homalg-project.github.io/CAP_project/GradedModulePresentationsForCAP/download_pdf.html

[tests-GradedModulePresentationsForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-GradedModulePresentationsForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-GradedModulePresentationsForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=GradedModulePresentationsForCAP
[codecov-GradedModulePresentationsForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/GradedModulePresentationsForCAP

[html-GroupRepresentationsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-GroupRepresentationsForCAP-url]: https://homalg-project.github.io/CAP_project/GroupRepresentationsForCAP/doc/chap0_mj.html

[pdf-GroupRepresentationsForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-GroupRepresentationsForCAP-url]: https://homalg-project.github.io/CAP_project/GroupRepresentationsForCAP/download_pdf.html

[tests-GroupRepresentationsForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-GroupRepresentationsForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-GroupRepresentationsForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=GroupRepresentationsForCAP
[codecov-GroupRepresentationsForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/GroupRepresentationsForCAP

[html-HeckeCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-HeckeCategories-url]: https://homalg-project.github.io/HeckeCategories/doc/chap0_mj.html

[pdf-HeckeCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-HeckeCategories-url]: https://homalg-project.github.io/HeckeCategories/download_pdf.html

[tests-HeckeCategories-img]: https://github.com/homalg-project/HeckeCategories/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-HeckeCategories-url]: https://github.com/homalg-project/HeckeCategories/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-HeckeCategories-img]: https://codecov.io/gh/homalg-project/HeckeCategories/branch/master/graph/badge.svg
[codecov-HeckeCategories-url]: https://app.codecov.io/gh/homalg-project/HeckeCategories

[html-HomologicalAlgebraForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-HomologicalAlgebraForCAP-url]: https://homalg-project.github.io/CAP_project/HomologicalAlgebraForCAP/doc/chap0_mj.html

[pdf-HomologicalAlgebraForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-HomologicalAlgebraForCAP-url]: https://homalg-project.github.io/CAP_project/HomologicalAlgebraForCAP/download_pdf.html

[tests-HomologicalAlgebraForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-HomologicalAlgebraForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-HomologicalAlgebraForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=HomologicalAlgebraForCAP
[codecov-HomologicalAlgebraForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/HomologicalAlgebraForCAP

[html-HomotopyCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-HomotopyCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/HomotopyCategories/doc/chap0_mj.html

[pdf-HomotopyCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-HomotopyCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/HomotopyCategories/download_pdf.html

[tests-HomotopyCategories-img]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-HomotopyCategories-url]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-HomotopyCategories-img]: https://codecov.io/gh/homalg-project/HigherHomologicalAlgebra/branch/master/graph/badge.svg?flag=HomotopyCategories
[codecov-HomotopyCategories-url]: https://app.codecov.io/gh/homalg-project/HigherHomologicalAlgebra/tree/master/HomotopyCategories

[html-InternalExteriorAlgebraForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-InternalExteriorAlgebraForCAP-url]: https://homalg-project.github.io/CAP_project/InternalExteriorAlgebraForCAP/doc/chap0_mj.html

[pdf-InternalExteriorAlgebraForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-InternalExteriorAlgebraForCAP-url]: https://homalg-project.github.io/CAP_project/InternalExteriorAlgebraForCAP/download_pdf.html

[tests-InternalExteriorAlgebraForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-InternalExteriorAlgebraForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-InternalExteriorAlgebraForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=InternalExteriorAlgebraForCAP
[codecov-InternalExteriorAlgebraForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/InternalExteriorAlgebraForCAP

[html-InternalModules-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-InternalModules-url]: https://homalg-project.github.io/CategoricalTowers/InternalModules/doc/chap0_mj.html

[pdf-InternalModules-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-InternalModules-url]: https://homalg-project.github.io/CategoricalTowers/InternalModules/download_pdf.html

[tests-InternalModules-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-InternalModules-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-InternalModules-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=InternalModules
[codecov-InternalModules-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/InternalModules

[html-IntrinsicCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-IntrinsicCategories-url]: https://homalg-project.github.io/CategoricalTowers/IntrinsicCategories/doc/chap0_mj.html

[pdf-IntrinsicCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-IntrinsicCategories-url]: https://homalg-project.github.io/CategoricalTowers/IntrinsicCategories/download_pdf.html

[tests-IntrinsicCategories-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-IntrinsicCategories-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-IntrinsicCategories-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=IntrinsicCategories
[codecov-IntrinsicCategories-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/IntrinsicCategories

[html-IntrinsicGradedModules-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-IntrinsicGradedModules-url]: https://homalg-project.github.io/CategoricalTowers/IntrinsicGradedModules/doc/chap0_mj.html

[pdf-IntrinsicGradedModules-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-IntrinsicGradedModules-url]: https://homalg-project.github.io/CategoricalTowers/IntrinsicGradedModules/download_pdf.html

[tests-IntrinsicGradedModules-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-IntrinsicGradedModules-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-IntrinsicGradedModules-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=IntrinsicGradedModules
[codecov-IntrinsicGradedModules-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/IntrinsicGradedModules

[html-IntrinsicModules-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-IntrinsicModules-url]: https://homalg-project.github.io/CategoricalTowers/IntrinsicModules/doc/chap0_mj.html

[pdf-IntrinsicModules-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-IntrinsicModules-url]: https://homalg-project.github.io/CategoricalTowers/IntrinsicModules/download_pdf.html

[tests-IntrinsicModules-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-IntrinsicModules-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-IntrinsicModules-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=IntrinsicModules
[codecov-IntrinsicModules-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/IntrinsicModules

[html-LazyCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-LazyCategories-url]: https://homalg-project.github.io/CategoricalTowers/LazyCategories/doc/chap0_mj.html

[pdf-LazyCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-LazyCategories-url]: https://homalg-project.github.io/CategoricalTowers/LazyCategories/download_pdf.html

[tests-LazyCategories-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-LazyCategories-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-LazyCategories-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=LazyCategories
[codecov-LazyCategories-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/LazyCategories

[html-LinearAlgebraForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-LinearAlgebraForCAP-url]: https://homalg-project.github.io/CAP_project/LinearAlgebraForCAP/doc/chap0_mj.html

[pdf-LinearAlgebraForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-LinearAlgebraForCAP-url]: https://homalg-project.github.io/CAP_project/LinearAlgebraForCAP/download_pdf.html

[tests-LinearAlgebraForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-LinearAlgebraForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-LinearAlgebraForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=LinearAlgebraForCAP
[codecov-LinearAlgebraForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/LinearAlgebraForCAP

[deposited-LinearAlgebraForCAP-url]: https://www.gap-system.org/Packages/linearalgebraforcap.html

[html-Locales-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-Locales-url]: https://homalg-project.github.io/CategoricalTowers/Locales/doc/chap0_mj.html

[pdf-Locales-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-Locales-url]: https://homalg-project.github.io/CategoricalTowers/Locales/download_pdf.html

[tests-Locales-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-Locales-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-Locales-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=Locales
[codecov-Locales-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/Locales

[html-ModulePresentationsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ModulePresentationsForCAP-url]: https://homalg-project.github.io/CAP_project/ModulePresentationsForCAP/doc/chap0_mj.html

[pdf-ModulePresentationsForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ModulePresentationsForCAP-url]: https://homalg-project.github.io/CAP_project/ModulePresentationsForCAP/download_pdf.html

[tests-ModulePresentationsForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ModulePresentationsForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ModulePresentationsForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=ModulePresentationsForCAP
[codecov-ModulePresentationsForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/ModulePresentationsForCAP

[deposited-ModulePresentationsForCAP-url]: https://www.gap-system.org/Packages/modulepresentationsforcap.html

[html-ModulesOverLocalRingsForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ModulesOverLocalRingsForCAP-url]: https://homalg-project.github.io/CAP_project/ModulesOverLocalRingsForCAP/doc/chap0_mj.html

[pdf-ModulesOverLocalRingsForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ModulesOverLocalRingsForCAP-url]: https://homalg-project.github.io/CAP_project/ModulesOverLocalRingsForCAP/download_pdf.html

[tests-ModulesOverLocalRingsForCAP-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ModulesOverLocalRingsForCAP-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ModulesOverLocalRingsForCAP-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=ModulesOverLocalRingsForCAP
[codecov-ModulesOverLocalRingsForCAP-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/ModulesOverLocalRingsForCAP

[html-MonoidalCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-MonoidalCategories-url]: https://homalg-project.github.io/CAP_project/MonoidalCategories/doc/chap0_mj.html

[pdf-MonoidalCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-MonoidalCategories-url]: https://homalg-project.github.io/CAP_project/MonoidalCategories/download_pdf.html

[tests-MonoidalCategories-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-MonoidalCategories-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-MonoidalCategories-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=MonoidalCategories
[codecov-MonoidalCategories-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/MonoidalCategories

[deposited-MonoidalCategories-url]: https://www.gap-system.org/Packages/monoidalcategories.html

[html-PreSheaves-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-PreSheaves-url]: https://homalg-project.github.io/CategoricalTowers/PreSheaves/doc/chap0_mj.html

[pdf-PreSheaves-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-PreSheaves-url]: https://homalg-project.github.io/CategoricalTowers/PreSheaves/download_pdf.html

[tests-PreSheaves-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-PreSheaves-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-PreSheaves-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=PreSheaves
[codecov-PreSheaves-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/PreSheaves

[html-QuotientCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-QuotientCategories-url]: https://homalg-project.github.io/CategoricalTowers/QuotientCategories/doc/chap0_mj.html

[pdf-QuotientCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-QuotientCategories-url]: https://homalg-project.github.io/CategoricalTowers/QuotientCategories/download_pdf.html

[tests-QuotientCategories-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-QuotientCategories-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-QuotientCategories-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=QuotientCategories
[codecov-QuotientCategories-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/QuotientCategories

[html-StableCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-StableCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/StableCategories/doc/chap0_mj.html

[pdf-StableCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-StableCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/StableCategories/download_pdf.html

[tests-StableCategories-img]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-StableCategories-url]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-StableCategories-img]: https://codecov.io/gh/homalg-project/HigherHomologicalAlgebra/branch/master/graph/badge.svg?flag=StableCategories
[codecov-StableCategories-url]: https://app.codecov.io/gh/homalg-project/HigherHomologicalAlgebra/tree/master/StableCategories

[html-SubcategoriesForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-SubcategoriesForCAP-url]: https://homalg-project.github.io/CategoricalTowers/SubcategoriesForCAP/doc/chap0_mj.html

[pdf-SubcategoriesForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-SubcategoriesForCAP-url]: https://homalg-project.github.io/CategoricalTowers/SubcategoriesForCAP/download_pdf.html

[tests-SubcategoriesForCAP-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-SubcategoriesForCAP-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-SubcategoriesForCAP-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=SubcategoriesForCAP
[codecov-SubcategoriesForCAP-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/SubcategoriesForCAP

[html-ToolsForCategoricalTowers-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ToolsForCategoricalTowers-url]: https://homalg-project.github.io/CategoricalTowers/ToolsForCategoricalTowers/doc/chap0_mj.html

[pdf-ToolsForCategoricalTowers-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ToolsForCategoricalTowers-url]: https://homalg-project.github.io/CategoricalTowers/ToolsForCategoricalTowers/download_pdf.html

[tests-ToolsForCategoricalTowers-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ToolsForCategoricalTowers-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ToolsForCategoricalTowers-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=ToolsForCategoricalTowers
[codecov-ToolsForCategoricalTowers-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/ToolsForCategoricalTowers

[html-Toposes-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-Toposes-url]: https://homalg-project.github.io/CategoricalTowers/Toposes/doc/chap0_mj.html

[pdf-Toposes-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-Toposes-url]: https://homalg-project.github.io/CategoricalTowers/Toposes/download_pdf.html

[tests-Toposes-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-Toposes-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-Toposes-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=Toposes
[codecov-Toposes-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/Toposes

[html-ToricSheaves-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ToricSheaves-url]: https://homalg-project.github.io/CAP_project/ToricSheaves/doc/chap0_mj.html

[pdf-ToricSheaves-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ToricSheaves-url]: https://homalg-project.github.io/CAP_project/ToricSheaves/download_pdf.html

[tests-ToricSheaves-img]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ToricSheaves-url]: https://github.com/homalg-project/CAP_project/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ToricSheaves-img]: https://codecov.io/gh/homalg-project/CAP_project/branch/master/graph/badge.svg?flag=ToricSheaves
[codecov-ToricSheaves-url]: https://app.codecov.io/gh/homalg-project/CAP_project/tree/master/ToricSheaves

[html-TriangulatedCategories-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-TriangulatedCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/TriangulatedCategories/doc/chap0_mj.html

[pdf-TriangulatedCategories-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-TriangulatedCategories-url]: https://homalg-project.github.io/HigherHomologicalAlgebra/TriangulatedCategories/download_pdf.html

[tests-TriangulatedCategories-img]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-TriangulatedCategories-url]: https://github.com/homalg-project/HigherHomologicalAlgebra/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-TriangulatedCategories-img]: https://codecov.io/gh/homalg-project/HigherHomologicalAlgebra/branch/master/graph/badge.svg?flag=TriangulatedCategories
[codecov-TriangulatedCategories-url]: https://app.codecov.io/gh/homalg-project/HigherHomologicalAlgebra/tree/master/TriangulatedCategories

[html-ZariskiFrames-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ZariskiFrames-url]: https://homalg-project.github.io/CategoricalTowers/ZariskiFrames/doc/chap0_mj.html

[pdf-ZariskiFrames-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ZariskiFrames-url]: https://homalg-project.github.io/CategoricalTowers/ZariskiFrames/download_pdf.html

[tests-ZariskiFrames-img]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ZariskiFrames-url]: https://github.com/homalg-project/CategoricalTowers/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ZariskiFrames-img]: https://codecov.io/gh/homalg-project/CategoricalTowers/branch/master/graph/badge.svg?flag=ZariskiFrames
[codecov-ZariskiFrames-url]: https://app.codecov.io/gh/homalg-project/CategoricalTowers/tree/master/ZariskiFrames

[html-ZXCalculusForCAP-img]: https://img.shields.io/badge/HTML-stable-blue.svg
[html-ZXCalculusForCAP-url]: https://homalg-project.github.io/ZXCalculusForCAP/doc/chap0_mj.html

[pdf-ZXCalculusForCAP-img]: https://img.shields.io/badge/PDF-stable-blue.svg
[pdf-ZXCalculusForCAP-url]: https://homalg-project.github.io/ZXCalculusForCAP/download_pdf.html

[tests-ZXCalculusForCAP-img]: https://github.com/homalg-project/ZXCalculusForCAP/actions/workflows/Tests.yml/badge.svg?branch=master
[tests-ZXCalculusForCAP-url]: https://github.com/homalg-project/ZXCalculusForCAP/actions/workflows/Tests.yml?query=branch%3Amaster

[codecov-ZXCalculusForCAP-img]: https://codecov.io/gh/homalg-project/ZXCalculusForCAP/branch/master/graph/badge.svg
[codecov-ZXCalculusForCAP-url]: https://app.codecov.io/gh/homalg-project/ZXCalculusForCAP

<!-- END CAP_project USED_BY -->

---

<b id="f1">1</b> [Kernel: Documentation of the limit](https://homalg-project.github.io/CAP_project/CAP/doc/chap6_mj.html#X7DCD99628504B810). [↩](#a1)<br>
<b id="f2">2</b> [Kernel: Specification of the limit](https://github.com/homalg-project/CAP_project/blob/61ee5d2f9c1c596b8a0ccca2682c02d7eef83cda/CAP/gap/MethodRecord.gi#L3798-L3807). [↩](#a2)<br>
<b id="f3">3</b> [Specification of KernelObject](https://github.com/homalg-project/CAP_project/blob/61ee5d2f9c1c596b8a0ccca2682c02d7eef83cda/CAP/gap/MethodRecord.gi#L265-L271). [↩](#a3)<br>
<b id="f4">4</b> [Specification of KernelEmbedding](https://github.com/homalg-project/CAP_project/blob/61ee5d2f9c1c596b8a0ccca2682c02d7eef83cda/CAP/gap/MethodRecord.gi#L273-L281). [↩](#a4)<br>
<b id="f5">5</b> [Specification of KernelLift](https://github.com/homalg-project/CAP_project/blob/61ee5d2f9c1c596b8a0ccca2682c02d7eef83cda/CAP/gap/MethodRecord.gi#L311-L319). [↩](#a5)<br>
<b id="f6">6</b> One can [view a doctrine as a (specific) 2-category](https://ncatlab.org/nlab/show/doctrine#as_2categories) and the category of doctrines as a 3-category of 2-categories. [↩](#a6)<br>

<!-- BEGIN FOOTER -->

[GAP]: https://www.gap-system.org/

[CAP_project]: https://github.com/homalg-project/CAP_project#readme

[CAP]: https://homalg-project.github.io/pkg/CAP

[CompilerForCAP]: https://homalg-project.github.io/pkg/CompilerForCAP

[MonoidalCategories]: https://homalg-project.github.io/pkg/MonoidalCategories

[TriangulatedCategories]: https://homalg-project.github.io/pkg/TriangulatedCategories

[Toposes]: https://homalg-project.github.io/pkg/Toposes

[Locales]: https://homalg-project.github.io/pkg/Locales

[doctrine]: https://ncatlab.org/nlab/show/doctrine

<!-- END FOOTER -->
