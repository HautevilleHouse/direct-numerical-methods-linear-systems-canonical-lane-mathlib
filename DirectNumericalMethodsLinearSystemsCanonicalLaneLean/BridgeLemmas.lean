import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalMethodsLinearSystems.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

def bridgeClosed (A : AdmissibleNumericalMethod) : Prop :=
  A.system.matrixInvertible ∧ A.methodConvergent

theorem bridge_from_admissible_class (A : AdmissibleNumericalMethod) :
    bridgeClosed A := by
  exact And.intro A.system.matrixInvertible A.methodConvergent

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
