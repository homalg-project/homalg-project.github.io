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
   | `RingAsCategory`                                | a unital ring | pre-additive)  | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `QuiverRows`                                    | a quiver and a commutative ring k | k-linear | [FreydCategoriesForCAP][FreydCategoriesForCAP] |
   | `Algebroid`                                     | a quiver and a commutative ring k | k-linear | [Algebroids][Algebroids] |
   | `RepresentationCategory`                        | a group and a field | k-linear Abelian | [GroupRepresentationsForCAP][GroupRepresentationsForCAP] |
   | `MatricCategory`                                | a (skew)field k | k-linear Abelian | [LinearAlgebraForCAP][LinearAlgebraForCAP] |
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
   | `FunctorCategory` := `Hom` | a fin. dim. k-algebroid and k-linear Abelian category | [FunctorCategories][FunctorCategories] |
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

[CAP]: https://github.com/homalg-project/CAP_project/tree/master/CAP/

[ComplexesAndFilteredObjectsForCAP]: https://github.com/homalg-project/CAP_project/tree/master/ComplexesAndFilteredObjectsForCAP/

[GeneralizedMorphismsForCAP]: https://github.com/homalg-project/CAP_project/tree/master/GeneralizedMorphismsForCAP/

[MonoidalCategories]: https://github.com/homalg-project/CAP_project/tree/master/MonoidalCategories/

[LinearAlgebraForCAP]: https://github.com/homalg-project/CAP_project/tree/master/LinearAlgebraForCAP/

[GroupRepresentationsForCAP]: https://github.com/homalg-project/CAP_project/tree/master/GroupRepresentationsForCAP/

[ModulePresentationsForCAP]: https://github.com/homalg-project/CAP_project/tree/master/ModulePresentationsForCAP/

[GradedModulePresentationsForCAP]: https://github.com/homalg-project/CAP_project/tree/master/GradedModulePresentationsForCAP/

[ActionsForCAP]: https://github.com/homalg-project/CAP_project/tree/master/ActionsForCAP/

[FreydCategoriesForCAP]: https://github.com/homalg-project/CAP_project/tree/master/FreydCategoriesForCAP/

[Algebroids]: https://github.com/homalg-project/Algebroids/

[FunctorCategories]: https://github.com/homalg-project/FunctorCategories/

[Bicomplexes]: https://github.com/homalg-project/HigherHomologicalAlgebra/tree/master/Bicomplexes/

[ComplexesCategories]: https://github.com/homalg-project/HigherHomologicalAlgebra/tree/master/ComplexesCategories/

[QuotientCategories]: https://github.com/homalg-project/HigherHomologicalAlgebra/tree/master/QuotientCategories/

[HomotopyCategories]: https://github.com/homalg-project/HigherHomologicalAlgebra/tree/master/HomotopyCategories/

[DerivedCategories]: https://github.com/homalg-project/HigherHomologicalAlgebra/tree/master/DerivedCategories/

[TriangulatedCategories]: https://github.com/homalg-project/HigherHomologicalAlgebra/tree/master/TriangulatedCategories/

[GradedCategories]: https://github.com/homalg-project/GradedCategories/

[InternalModules]: https://github.com/homalg-project/InternalModules/

[Toposes]: https://github.com/homalg-project/Toposes/

[FinSetsForCAP]: https://github.com/homalg-project/FinSetsForCAP/

[FinGSetsForCAP]: https://github.com/homalg-project/FinGSetsForCAP/

[Locales]: https://github.com/homalg-project/Locales/

[FunctorCategories]: https://github.com/homalg-project/FunctorCategories/

[SubcategoriesForCAP]: https://github.com/homalg-project/SubcategoriesForCAP/

[CategoriesWithAmbientObjects]: https://github.com/homalg-project/CategoriesWithAmbientObjects/

[IntrinsicCategories]: https://github.com/homalg-project/IntrinsicCategories/

[InternalModules]: https://github.com/homalg-project/InternalModules/

[WrapperCategories]: https://github.com/homalg-project/WrapperCategories/

[LazyCategories]: https://github.com/homalg-project/LazyCategories/

<!-- END FOOTER -->
