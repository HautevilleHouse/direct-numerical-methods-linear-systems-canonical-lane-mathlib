import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure IterativeMethodPackage (M : MatrixStructurePackage) where
  methodType : String
  iterationMatrix : Type u
  spectralRadius : Float
  convergenceCriterion : Prop
  rateOfConvergence : Prop

structure IterativeMethodEvidence {M : MatrixStructurePackage} (I : IterativeMethodPackage M) where
  spectralRadiusClosed : I.spectralRadius < 1.0
  convergenceCriterionClosed : I.convergenceCriterion
  rateOfConvergenceClosed : I.rateOfConvergence

def IterativeMethodClosed {M : MatrixStructurePackage} (I : IterativeMethodPackage M) : Prop :=
  I.spectralRadius < 1.0 ∧ I.convergenceCriterion ∧ I.rateOfConvergence

theorem iterative_method_closed_from_evidence {M : MatrixStructurePackage} (I : IterativeMethodPackage M) (E : IterativeMethodEvidence I) : IterativeMethodClosed I := by
  exact And.intro E.spectralRadiusClosed (And.intro E.convergenceCriterionClosed E.rateOfConvergenceClosed)

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse