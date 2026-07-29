import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure ErrorAnalysisPackage where
  residualBound : Prop
  forwardErrorBound : Prop
  backwardErrorBound : Prop
  stabilityCondition : Prop

structure ErrorAnalysisEvidence (E : ErrorAnalysisPackage) where
  residualBoundClosed : E.residualBound
  forwardErrorBoundClosed : E.forwardErrorBound
  backwardErrorBoundClosed : E.backwardErrorBound
  stabilityConditionClosed : E.stabilityCondition

def ErrorAnalysisClosed (E : ErrorAnalysisPackage) : Prop :=
  E.residualBound ∧ E.forwardErrorBound ∧ E.backwardErrorBound ∧ E.stabilityCondition

theorem error_analysis_closed_from_evidence (E : ErrorAnalysisPackage) (Ev : ErrorAnalysisEvidence E) : ErrorAnalysisClosed E := by
  exact And.intro Ev.residualBoundClosed (And.intro Ev.forwardErrorBoundClosed (And.intro Ev.backwardErrorBoundClosed Ev.stabilityConditionClosed))

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse