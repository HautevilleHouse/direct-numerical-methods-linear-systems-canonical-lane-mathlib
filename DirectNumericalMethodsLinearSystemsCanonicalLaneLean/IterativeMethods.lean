import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure IterativeMethodsPackage where
  convergenceGuarantee : Prop
  spectralRadiusBound : Prop
  preconditionerExists : Prop
  stoppingCriterion : Prop
  convergenceGuaranteeClosed : convergenceGuarantee
  spectralRadiusBoundClosed : spectralRadiusBound
  preconditionerExistsClosed : preconditionerExists
  stoppingCriterionClosed : stoppingCriterion

structure IterativeMethodsEvidence (P : IterativeMethodsPackage) where
  convergenceGuaranteeClosed : P.convergenceGuarantee
  spectralRadiusBoundClosed : P.spectralRadiusBound
  preconditionerExistsClosed : P.preconditionerExists
  stoppingCriterionClosed : P.stoppingCriterion

def IterativeMethodsClosed (P : IterativeMethodsPackage) : Prop :=
  P.convergenceGuarantee ∧ P.spectralRadiusBound ∧ P.preconditionerExists ∧ P.stoppingCriterion

theorem iterative_methods_closed_from_evidence (P : IterativeMethodsPackage) (E : IterativeMethodsEvidence P) : IterativeMethodsClosed P := by
  exact And.intro E.convergenceGuaranteeClosed (And.intro E.spectralRadiusBoundClosed (And.intro E.preconditionerExistsClosed E.stoppingCriterionClosed))

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse
