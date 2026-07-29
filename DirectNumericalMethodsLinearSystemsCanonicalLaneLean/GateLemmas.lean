import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalMethodsLinearSystems.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

def gateClosed (A : AdmissibleNumericalMethod) : Prop :=
  A.methodConvergent ∨ A.errorBounded

theorem gate_from_admissible_class (A : AdmissibleNumericalMethod) :
    gateClosed A := by
  exact A.gateWitness

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
