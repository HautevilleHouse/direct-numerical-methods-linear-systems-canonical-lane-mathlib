import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

structure LinearSystemObject where
  matrix : Type
  vector : Type
  sol : Type
  dim : Nat
  nonsingular : Prop
  numericalMethod : Type
  errorBound : Prop
  conclusion : nonsingular ∧ errorBound

def LinearSystemClosed (O : LinearSystemObject) : Prop :=
  O.nonsingular ∧ O.errorBound

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
