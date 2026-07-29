import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure MatrixFactorization where
  matrixType : Type
  factorizationType : Type
  existenceTheorem : Prop
  stabilityBound : Prop
  computationalCost : Nat

structure LUFactorization extends MatrixFactorization where
  pivotStrategy : String
  pivotTolerance : Float
  singularCaseHandling : Prop

structure QRFactorization extends MatrixFactorization where
  orthogonalMethod : String
  upperTriangularForm : Prop
  rankRevealing : Prop

structure SVDDecomposition extends MatrixFactorization where
  singularValues : List Float
  leftSingularVectors : Type
  rightSingularVectors : Type
  lowRankApproximation : Prop

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse
