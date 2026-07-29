import DirectNumericalMethodsLinearSystemsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure DirectNumericalMethodsAdmittedObject where
  system : Type
  matrix : Type
  rhs : Type
  solution : Type
  linearSystemSolved : Prop
  numericalMethodConverges : Prop
  errorBounded : Prop
  convergenceRate : Prop
  conclusion : linearSystemSolved ∧ numericalMethodConverges ∧ errorBounded ∧ convergenceRate

def DirectNumericalMethodsWitnessClosed (O : DirectNumericalMethodsAdmittedObject) : Prop :=
  O.linearSystemSolved ∧ O.numericalMethodConverges ∧ O.errorBounded ∧ O.convergenceRate

theorem direct_numerical_methods_witness_closed (O : DirectNumericalMethodsAdmittedObject) :
    DirectNumericalMethodsWitnessClosed O := by
  exact O.conclusion

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse