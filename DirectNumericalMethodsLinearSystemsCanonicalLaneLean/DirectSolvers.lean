import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

structure GaussianElimination (A : AdmissibleNumericalMethod) where
  forwardElimination : Prop
  backSubstitution : Prop
  partialPivoting : Prop
  stabilityGuaranteed : Prop
  solutionExact : Prop
  solverClosed : solutionExact

def GaussianEliminationClosed (G : GaussianElimination A) : Prop :=
  G.forwardElimination ∧ G.backSubstitution ∧ G.solutionExact

structure LUDecomposition (A : AdmissibleNumericalMethod) where
  lowerTriangular : Type
  upperTriangular : Type
  permutationMatrix : Type
  decompositionExists : Prop
  solveMethod : Prop
  decompositionClosed : decompositionExists

def LUDecompositionClosed (L : LUDecomposition A) : Prop :=
  L.decompositionExists ∧ L.solveMethod

structure CholeskyDecomposition (A : AdmissibleNumericalMethod) where
  lowerTriangular : Type
  matrixSymmetric : A.system.matrixInvertible
  matrixPositiveDefinite : Prop
  decompositionExists : Prop
  solveMethod : Prop
  decompositionClosed : decompositionExists

def CholeskyDecompositionClosed (C : CholeskyDecomposition A) : Prop :=
  C.matrixPositiveDefinite ∧ C.decompositionExists ∧ C.solveMethod

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
