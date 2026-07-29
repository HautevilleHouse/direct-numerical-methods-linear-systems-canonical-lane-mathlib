import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure GaussianEliminationPackage where
  pivotStrategy : Prop
  forwardElimination : Prop
  backwardSubstitution : Prop
  numericalStability : Prop
  pivotStrategyClosed : pivotStrategy
  forwardEliminationClosed : forwardElimination
  backwardSubstitutionClosed : backwardSubstitution
  numericalStabilityClosed : numericalStability

structure GaussianEliminationEvidence (P : GaussianEliminationPackage) where
  pivotStrategyClosed : P.pivotStrategy
  forwardEliminationClosed : P.forwardElimination
  backwardSubstitutionClosed : P.backwardSubstitution
  numericalStabilityClosed : P.numericalStability

def GaussianEliminationClosed (P : GaussianEliminationPackage) : Prop :=
  P.pivotStrategy ∧ P.forwardElimination ∧ P.backwardSubstitution ∧ P.numericalStability

theorem gaussian_elimination_closed_from_evidence (P : GaussianEliminationPackage) (E : GaussianEliminationEvidence P) : GaussianEliminationClosed P := by
  exact And.intro E.pivotStrategyClosed (And.intro E.forwardEliminationClosed (And.intro E.backwardSubstitutionClosed E.numericalStabilityClosed))

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse
