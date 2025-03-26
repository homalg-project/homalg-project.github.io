---
title: Categorical doctrines
tags:
 - categorical doctrines
description: Categorical doctrines
---

# Categorical doctrines

[CAP][CAP] defines *and* allows defining (hierarchies of) categorical [doctrines][doctrine], some of which are well-known, others are less known, or even new.
There are several [CAP][CAP]-based packages that define various *categorical doctrines*:

| [doctrine][doctrine] (either selfdual `doctrine` or `doctrine`  / `dual doctrine` ) | package        |
|:---------------------|:---------------|
| `IsEnrichedOverCommutativeRegularSemigroup` | [CAP][CAP] |
| `IsAbCategory` | [CAP][CAP] |
| `IsCategoryWithTerminalObject` / `IsCategoryWithInitialObject` | [CAP][CAP] |
| `IsCartesianCategory` / `IsCocartesianCategory` | [CartesianCategories][CartesianCategories] |
| `IsBicartesianCategory` | [CartesianCategories][CartesianCategories] |
| `IsCategoryWithZeroObject` | [CAP][CAP] |
| `IsAdditiveCategory` | [CAP][CAP] |
| `IsCategoryWithCoequalizers` / `IsCategoryWithEqualizers` | [CAP][CAP] |
| `IsFiniteCocompleteCategory` / `IsFiniteCompleteCategory` | [CartesianCategories][CartesianCategories] |
| `IsFiniteBicompleteCategory` | [CartesianCategories][CartesianCategories] |
| `IsPreAbelianCategory` | [CAP][CAP] |
| `IsAbelianCategory` | [CAP][CAP] |
| `IsAbelianCategoryWithEnoughInjectives` / `IsAbelianCategoryWithEnoughProjectives` | [CAP][CAP] |
| `IsCartesianClosedCategory` / `IsCocartesianCoclosedCategory` | [CartesianCategories][CartesianCategories] |
| `IsDistributiveCategory` / `IsCodistributiveCategory` | [CartesianCategories][CartesianCategories] |
| `IsBicartesianClosedCategory` / `IsBicartesianCoclosedCategory` | [CartesianCategories][CartesianCategories] |
| `IsThinCategory` | [Locales][Locales] |
| `IsCartesianProset` / `IsCocartesianProset` | [Locales][Locales] |
| `IsBicartesianProset` | [Locales][Locales] |
| `IsDistributiveBicartesianProset` | [Locales][Locales] |
| `IsCoHeytingAlgebroid` / `IsHeytingAlgebroid` | [Locales][Locales] |
| `IsBiHeytingAlgebroid` | [Locales][Locales] |
| `IsPosetCategory` | [Locales][Locales] |
| `IsJoinSemiLattice` / `IsMeetSemiLattice` | [Locales][Locales] |
| `IsLattice` | [Locales][Locales] |
| `IsDistributiveLattice` | [Locales][Locales] |
| `IsCoHeytingAlgebra` / `IsHeytingAlgebra` | [Locales][Locales] |
| `IsBiHeytingAlgebra` | [Locales][Locales] |
| `IsBooleanAlgebroid` | [Locales][Locales] |
| `IsBooleanAlgebra` | [Locales][Locales] |
| `IsMonoidalCategory` | [MonoidalCategories][MonoidalCategories] |
| `IsSymmetricMonoidalCategory` | [MonoidalCategories][MonoidalCategories] |
| `IsCategoryWithDecidableColifts` / `IsCategoryWithDecidableLifts` | [CAP][CAP] |
| `IsClosedMonoidalCategory` / `IsCoclosedMonoidalCategory` | [MonoidalCategories][MonoidalCategories] |
| `IsMonoidalProset` | [Locales][Locales] |
| `IsClosedMonoidalProset` / `IsCoclosedMonoidalProset` | [Locales][Locales] |
| `IsMonoidalPoset` | [Locales][Locales] |
| `IsClosedMonoidalPoset` / `IsCoclosedMonoidalPoset` | [Locales][Locales] |
| `IsMonoidalLattice` | [Locales][Locales] |
| `IsClosedMonoidalLattice` / `IsCoclosedMonoidalLattice` | [Locales][Locales] |
| `IsElementaryTopos` / not supported yet | [Toposes][Toposes] |
| `IsEquippedWithHomomorphismStructure` | [CAP][CAP] |
| `IsObjectFiniteCategory` | [ToolsForCategoricalTowers][ToolsForCategoricalTowers] |
| `IsFinitelyPresentedCategory` | [FpCategories][FpCategories] |
| `IsFiniteCategory` | [ToolsForCategoricalTowers][ToolsForCategoricalTowers] |
| `IsLeftClosedMonoidalCategory` / `IsLeftCoclosedMonoidalCategory` | [MonoidalCategories][MonoidalCategories] |
| `IsLinearCategoryOverCommutativeRing` | [CAP][CAP] |
| `IsLinearCategoryOverCommutativeRingWithFinitelyGeneratedFreeExternalHoms` | [CAP][CAP] |
| `IsSymmetricClosedMonoidalCategory` / `IsSymmetricCoclosedMonoidalCategory` | [MonoidalCategories][MonoidalCategories] |
| `IsRigidSymmetricClosedMonoidalCategory` / `IsRigidSymmetricCoclosedMonoidalCategory` | [MonoidalCategories][MonoidalCategories] |
| `IsSymmetricMonoidalProset` | [Locales][Locales] |
| `IsSymmetricClosedMonoidalProset` / `IsSymmetricCoclosedMonoidalProset` | [Locales][Locales] |
| `IsSymmetricMonoidalPoset` | [Locales][Locales] |
| `IsSymmetricClosedMonoidalPoset` / `IsSymmetricCoclosedMonoidalPoset` | [Locales][Locales] |
| `IsSymmetricMonoidalLattice` | [Locales][Locales] |
| `IsSymmetricClosedMonoidalLattice` / `IsSymmetricCoclosedMonoidalLattice` | [Locales][Locales] |
| `IsTriangulatedCategory`<sup id="a1">[1](#f1)</sup> | [TriangulatedCategories][TriangulatedCategories] |

---

<sup><b id="f1">1</b></sup> "triangulated category" is strictly speaking not a doctrine due to the nonfunctoriality of the cone. [↩](#a1)<br>

<!-- BEGIN FOOTER -->

[doctrine]: https://ncatlab.org/nlab/show/doctrine

[CAP]: https://homalg-project.github.io/pkg/CAP

[MonoidalCategories]: https://homalg-project.github.io/pkg/MonoidalCategories

[CartesianCategories]: https://homalg-project.github.io/pkg/CartesianCategories

[FpCategories]: https://homalg-project.github.io/pkg/FpCategories

[Algebroids]: https://homalg-project.github.io/pkg/Algebroids

[Locales]: https://homalg-project.github.io/pkg/Locales

[Toposes]: https://homalg-project.github.io/pkg/Toposes

[ToolsForCategoricalTowers]: https://homalg-project.github.io/pkg/ToolsForCategoricalTowers

[TriangulatedCategories]: https://homalg-project.github.io/pkg/TriangulatedCategories

<!-- END FOOTER -->
