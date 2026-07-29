import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

structure LinearSystemClass where
  matrix : Type
  rightHandSide : Type
  solution : Type
  matrixInvertible : Prop
  residualZero : Prop
  conditionNumberFinite : Prop

structure AdmissibleNumericalMethod where
  system : LinearSystemClass
  methodConvergent : Prop
  errorBounded : Prop
  iterationStable : Prop
  gateWitness : methodConvergent ∨ (errorBounded ∧ iterationStable)

def AdmissibleMethodConstraint (A : AdmissibleNumericalMethod) : Prop :=
  A.system.matrixInvertible ∧ (A.methodConvergent ∨ A.errorBounded)

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
