import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure PreconditionerPackage {M : MatrixStructurePackage} where
  preconditionerMatrix : Type u
  conditionNumberImprovement : Prop
  implementationCost : Prop

structure PreconditionerEvidence {M : MatrixStructurePackage} (P : PreconditionerPackage M) where
  conditionNumberImprovementClosed : P.conditionNumberImprovement
  implementationCostClosed : P.implementationCost ≤ 0.5

def PreconditionerClosed {M : MatrixStructurePackage} (P : PreconditionerPackage M) : Prop :=
  P.conditionNumberImprovement ∧ P.implementationCost ≤ 0.5

theorem preconditioner_closed_from_evidence {M : MatrixStructurePackage} (P : PreconditionerPackage M) (E : PreconditionerEvidence P) : PreconditionerClosed P := by
  exact And.intro E.conditionNumberImprovementClosed E.implementationCostClosed

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse