import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

structure ConditionNumberPackage where
  matrix : Type
  norm : Type
  conditionNumber : Type
  conditionNumberFinite : Prop
  sensitivityBound : Prop
  perturbationAnalysis : Prop

structure ConditionNumberEvidence (P : ConditionNumberPackage) where
  conditionNumberFiniteClosed : P.conditionNumberFinite
  sensitivityBoundClosed : P.sensitivityBound
  perturbationAnalysisClosed : P.perturbationAnalysis

def ConditionNumberClosed (P : ConditionNumberPackage) : Prop :=
  P.conditionNumberFinite ∧ P.sensitivityBound ∧ P.perturbationAnalysis

theorem condition_number_closed_from_evidence
    (P : ConditionNumberPackage) (E : ConditionNumberEvidence P) :
    ConditionNumberClosed P := by
  exact And.intro E.conditionNumberFiniteClosed
    (And.intro E.sensitivityBoundClosed E.perturbationAnalysisClosed)

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
