import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure IterativeMethodKey where
  name : String
  convergenceOrder : Prop
  breakDownCondition : Prop

structure StationaryIteration where
  splitting : String
  iterationMatrix : Type
  spectralRadiusCondition : Prop
  optimalParameter : Float

structure KrylovSubspaceMethod where
  subspaceDimension : Nat
  orthogonalizationScheme : String
  preconditionerAvailable : Prop
  residualMinimization : Prop

structure CG extends KrylovSubspaceMethod where
  symmetricPositiveDefinite : Prop
  finiteTermination : Prop
  conditionNumberDependence : Prop

structure GMRES extends KrylovSubspaceMethod where
  restartFrequency : Nat
  arnoldiIteration : Prop
  residualNormDecrease : Prop

structure BiCGSTAB extends KrylovSubspaceMethod where
  transposeFree : Prop
  smoothedResidual : Prop
  stabilityImproved : Prop

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse
