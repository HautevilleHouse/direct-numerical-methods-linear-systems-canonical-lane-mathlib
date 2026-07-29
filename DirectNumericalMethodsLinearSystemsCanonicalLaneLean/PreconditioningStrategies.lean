import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure Preconditioner where
  preconditionerType : String
  constructionCost : Nat
  applicationCost : Nat
  spectralConditionImprovement : Prop

structure JacobiPreconditioner extends Preconditioner where
  diagonalScaling : Prop
  parallelizable : Prop

struct SSORPreconditioner extends Preconditioner where
  relaxationParameter : Float
  symmetricForm : Prop
  optimalParameterSelection : Prop

structure IncompleteLUPreconditioner extends Preconditioner where
  fillLevel : Nat
  threshold : Float
  stabilityGuarantee : Prop

structure DomainDecompositionPreconditioner extends Preconditioner where
  subdomainCount : Nat
  overlapDegree : Nat
  coarseGridCorrection : Prop

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse
