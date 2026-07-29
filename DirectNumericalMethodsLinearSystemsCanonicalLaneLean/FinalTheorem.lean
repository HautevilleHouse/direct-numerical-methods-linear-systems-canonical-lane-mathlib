import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

def ConstrainedLinearSystemsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linear_systems_endgame (A : AdmissibleClass) : ConstrainedLinearSystemsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse