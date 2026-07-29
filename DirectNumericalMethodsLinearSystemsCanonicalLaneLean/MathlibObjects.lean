import DirectNumericalMethodsLinearSystemsCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure LinearSystemSpace where
  carrier : Type
  vectorSpace : AddCommGroup carrier
  field : Field carrier

structure LinearSystemAdmittedObject where
  space : LinearSystemSpace
  coefficientMatrix : Matrix (Fin n) (Fin n) carrier
  rightHandSide : Vector (Fin n) carrier
  solution : Vector (Fin n) carrier
  solutionSatisfiesSystem : coefficientMatrix * solution = rightHandSide
  conclusion : Prop

structure LinearSystemEndgameState where
  object : LinearSystemAdmittedObject

def LinearSystemWitnessClosed (O : LinearSystemAdmittedObject) : Prop :=
  O.solutionSatisfiesSystem

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse