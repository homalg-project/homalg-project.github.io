---
title: Category constructors
tags:
 - category constructors
description: Category constructors
---

# Category constructors

## Categories from scratch

#### Category constructors with nothing, a combinatorial, or an algebraic data structure as input:
   
   | category constructor                            | input   | [doctrine][doctrine] | package    |
   |:------------------------------------------------|:-------:|:--------------------:|:-----------|
   | `TerminalCategory`                              | nothing | almost all           | [CAP][CAP] |
   | `CatCat`                                        | nothing | 2-category           | [CAP][CAP] |
   | `FinSets`                                       | nothing            | elementary topos | [FinSetsForCAP][FinSetsForCAP] |
   | `SkeletalFinSets`                               | nothing            | elementary topos | [FinSetsForCAP][FinSetsForCAP] |
   | `SkeletalFinGSets`                              | a (discrete) group | elementary topos | [FinGSetsForCAP][FinGSetsForCAP] |
   | `ProSetAsCategory`                              | a proset | [thin][thin]        | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `GroupAsCategory`                               | a (discrete) group | groupoid  | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `RingAsCategory`                                | a unital ring | pre-additive  | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `QuiverRows`                                    | a quiver and a commutative ring k | k-linear | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `Algebroid`                                     | a quiver and a commutative ring k | k-linear | [Algebroids][Algebroids] |
   | `RepresentationCategory`                        | a group and a field | k-linear Abelian | [GroupRepresentationsForCAP][GroupRepresentationsForCAP] |
   | `MatrixCategory`                                | a (skew)field k | k-linear Abelian | [LinearAlgebraForCAP][LinearAlgebraForCAP] |
   | `CategoryOfRows`                                | a unital ring | additive | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `CategoryOfColumns`                             | a unital ring | additive | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `LeftPresentations`                             | a computable ring | Abelian | [ModulePresentationsForCAP][ModulePresentationsForCAP] |
   | `RightPresentations`                            | a computable ring | Abelian | [ModulePresentationsForCAP][ModulePresentationsForCAP] |
   | `GradedLeftPresentations`                       | computable (multi) graded ring | Abelian | [GradedModulePresentationsForCAP][GradedModulePresentationsForCAP] |
   | `GradedRightPresentations`                      | computable (multi) graded ring | Abelian | [GradedModulePresentationsForCAP][GradedModulePresentationsForCAP] |
   | `CategoryOfHomalgFinitelyPresentedLeftModules`  | a computable ring | Abelian | [InternalModules][InternalModules] |
   | `CategoryOfHomalgFinitelyPresentedRightModules` | a computable ring | Abelian | [InternalModules][InternalModules] |

## Categories from categories

#### Category constructors which take one or several categories as input:
   
   | category constructor | input      | package    |
   |:---------------------|:----------:|:-----------|
   | `OppositeCategory`   | a category | [CAP][CAP] |
   | `ProductCategory`    | several categories | [CAP][CAP] |
   | `LinearClosure`        | a commutative ring and a category | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `TwistedLinearClosure` | a commutative ring and a category | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `AdditiveClosure`      | a pre-additive category | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `FreydCategory`        | an additive category    | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `CokernelImageClosure` | an additive category    | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `CategoryOfAscendingFilteredObjects`  | an Abelian category | [ComplexesAndFilteredObjectsForCAP][ComplexesAndFilteredObjectsForCAP] |
   | `CategoryOfDescendingFilteredObjects` | an Abelian category | [ComplexesAndFilteredObjectsForCAP][ComplexesAndFilteredObjectsForCAP] |
   | `RelCategory` | a category | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `GeneralizedMorphismCategoryByThreeArrows` | an Abelian category | [GeneralizedMorphismsForCAP][GeneralizedMorphismsForCAP] |
   | `GeneralizedMorphismCategoryByCospans`     | an Abelian category | [GeneralizedMorphismsForCAP][GeneralizedMorphismsForCAP] |
   | `GeneralizedMorphismCategoryBySpans`       | an Abelian category | [GeneralizedMorphismsForCAP][GeneralizedMorphismsForCAP] |
   | `SerreQuotientsByCospans`     | an Abelian category and a thick subcategory | [GeneralizedMorphismsForCAP][GeneralizedMorphismsForCAP] |
   | `SerreQuotientsBySpans`       | an Abelian category and a thick subcategory | [GeneralizedMorphismsForCAP][GeneralizedMorphismsForCAP] |
   | `SerreQuotientsByThreeArrows` | an Abelian category and a thick subcategory | [GeneralizedMorphismsForCAP][GeneralizedMorphismsForCAP] |
   | `AdelmanCategory`          | an additive category | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `FunctorCategory` = `Hom` | a fin. dim. k-algebroid and k-linear Abelian category | [FunctorCategories][FunctorCategories] |
   | `EnhancementWithAttributes` | an Abelian category | [CategoriesWithAmbientObjects][CategoriesWithAmbientObjects] |
   | `LeftActionsCategory`       | an Abelian category | [ActionsForCAP][ActionsForCAP] |
   | `RightActionsCategory`      | an Abelian category | [ActionsForCAP][ActionsForCAP] |
   | `LeftCoactionsCategory`     | an Abelian category | [ActionsForCAP][ActionsForCAP] |
   | `RightCoactionsCategory`    | an Abelian category | [ActionsForCAP][ActionsForCAP] |
   | `FullSubcategory`           | a category | [SubcategoriesForCAP][SubcategoriesForCAP] |
   | `Subcategory`               | a category | [SubcategoriesForCAP][SubcategoriesForCAP] |
   | `ChainComplexCategory`      | an additive category                             | [ComplexesCategories][ComplexesCategories] |
   | `CochainComplexCategory`    | an additive category                             | [ComplexesCategories][ComplexesCategories] |
   | `AsCategoryOfBicomplexes`   | an additive category<sup id="a1">[1](#f1)</sup>  | [Bicomplexes][Bicomplexes] |
   | `QuotientCategory`          | a category and a two-sided ideal                 | [QuotientCategories][QuotientCategories] |
   | `HomotopyCategory`          | an additive category                             | [HomotopyCategories][HomotopyCategories] |
   | `DerivedCategory`           | an Abelian category                              | [DerivedCategories][DerivedCategories] |
   | `CategoryOfExactTriangles`  | a triangulated category                          | [TriangulatedCategories][TriangulatedCategories] |
   | `PositivelyZGradedCategory` | a category | [GradedCategories][GradedCategories] |
   | `CategoryOfLeftSModules`    | a semi-simple tensor category<sup id="a2">[2](#f2)</sup> | [InternalModules][InternalModules] |
   | `CategoryOfRightSModules`   | a semi-simple tensor category<sup id="a2">[2](#f2)</sup> | [InternalModules][InternalModules] |
   | `SliceCategory`               | an object (of a category)                | [SubcategoriesForCAP][SubcategoriesForCAP] |
   | `SliceCategoryOverTensorUnit` | the tensor unit (of a monoidal category) | [SubcategoriesForCAP][SubcategoriesForCAP] |
   | `PosetOfCategory`  | a category | [Locales][Locales] |
   | `ProsetOfCategory` | a category | [Locales][Locales] |
   | `MeetSemilatticeOfDifferences` | a poset | [Locales][Locales] |
   | `MeetSemilatticeOfMultipleDifferences` | a poset | [Locales][Locales] |
   | `BooleanAlgebraOfConstructibleObjectsAsUnionOfDifferences` | a poset | [Locales][Locales] |
   | `BooleanAlgebraOfConstructibleObjectsAsUnionOfMultipleDifferences` | a poset | [Locales][Locales] |
   | `CategoryWithAmbientObject` | an Abelian category | [CategoriesWithAmbientObjects][CategoriesWithAmbientObjects] |
   | `IntrinsicCategory` | a category | [IntrinsicCategories][IntrinsicCategories] |
   | `WrapperCategory` | a category | [WrapperCategories][WrapperCategories] |
   | `LazyCategory` | a category | [LazyCategories][LazyCategories] |

---
<sup><b id="f1">1</b></sup> of complexes of complexes of an additive category [↩](#a1)<br>
<sup><b id="f2">2</b></sup> its positively graded closure [↩](#a2)<br>

<!-- BEGIN FOOTER -->

[doctrine]: https://ncatlab.org/nlab/show/doctrine/

[thin]: https://ncatlab.org/nlab/show/thin+category/

[CAP]: https://homalg-project.github.io/pkg/CAP/

[ComplexesAndFilteredObjectsForCAP]: https://homalg-project.github.io/pkg/ComplexesAndFilteredObjectsForCAP/

[GeneralizedMorphismsForCAP]: https://homalg-project.github.io/pkg/GeneralizedMorphismsForCAP/

[MonoidalCategories]: https://homalg-project.github.io/pkg/MonoidalCategories/

[LinearAlgebraForCAP]: https://homalg-project.github.io/pkg/LinearAlgebraForCAP/

[GroupRepresentationsForCAP]: https://homalg-project.github.io/pkg/GroupRepresentationsForCAP/

[ModulePresentationsForCAP]: https://homalg-project.github.io/pkg/ModulePresentationsForCAP/

[GradedModulePresentationsForCAP]: https://homalg-project.github.io/pkg/GradedModulePresentationsForCAP/

[ActionsForCAP]: https://homalg-project.github.io/pkg/ActionsForCAP/

[FreydCategoriesForCAP]: https://homalg-project.github.io/pkg/FreydCategoriesForCAP/

[Algebroids]: https://homalg-project.github.io/pkg/Algebroids/

[FunctorCategories]: https://homalg-project.github.io/pkg/FunctorCategories/

[Bicomplexes]: https://homalg-project.github.io/pkg/Bicomplexes/

[ComplexesCategories]: https://homalg-project.github.io/pkg/ComplexesCategories/

[QuotientCategories]: https://homalg-project.github.io/pkg/QuotientCategories/

[HomotopyCategories]: https://homalg-project.github.io/pkg/HomotopyCategories/

[DerivedCategories]: https://homalg-project.github.io/pkg/DerivedCategories/

[TriangulatedCategories]: https://homalg-project.github.io/pkg/TriangulatedCategories/

[GradedCategories]: https://homalg-project.github.io/pkg/GradedCategories/

[InternalModules]: https://homalg-project.github.io/pkg/InternalModules/

[Toposes]: https://homalg-project.github.io/pkg/Toposes/

[FinSetsForCAP]: https://homalg-project.github.io/pkg/FinSetsForCAP/

[FinGSetsForCAP]: https://homalg-project.github.io/pkg/FinGSetsForCAP/

[Locales]: https://homalg-project.github.io/pkg/Locales/

[FunctorCategories]: https://homalg-project.github.io/pkg/FunctorCategories/

[SubcategoriesForCAP]: https://homalg-project.github.io/pkg/SubcategoriesForCAP/

[CategoriesWithAmbientObjects]: https://homalg-project.github.io/pkg/CategoriesWithAmbientObjects/

[IntrinsicCategories]: https://homalg-project.github.io/pkg/IntrinsicCategories/

[InternalModules]: https://homalg-project.github.io/pkg/InternalModules/

[WrapperCategories]: https://homalg-project.github.io/pkg/WrapperCategories/

[LazyCategories]: https://homalg-project.github.io/pkg/LazyCategories/

<!-- END FOOTER -->
