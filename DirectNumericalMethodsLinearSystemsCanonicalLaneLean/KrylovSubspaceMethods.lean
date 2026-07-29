import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

structure ConjugateGradientMethod (A : AdmissibleNumericalMethod) where
  matrixSymmetric : A.system.matrixInvertible
  matrixPositiveDefinite : Prop
  searchDirections : Type
  residualUpdate : Prop
  convergenceRate : ℝ
  convergenceRatePositive : convergenceRate > 0
  methodConvergent : Prop
  convergenceClosed : methodConvergent

def CGConvergenceClosed (C : ConjugateGradientMethod A) : Prop :=
  C.matrixSymmetric ∧ C.matrixPositiveDefinite ∧ C.methodConvergent

structure GMRESMethod (A : AdmissibleNumericalMethod) where
  arnoldiProcess : Type
  leastSquaresSolve : Prop
  convergenceRate : ℝ
  convergenceRatePositive : convergenceRate > 0
  methodConvergent : Prop
  convergenceClosed : methodConvergent

def GMRESConvergenceClosed (G : GMRESMethod A) : Prop :=
  G.methodConvergent

structure BiCGSTABMethod (A : AdmissibleNumericalMethod) where
  transposeFree : Prop
  residualUpdate : Prop
  convergenceRate : ℝ
  convergenceRatePositive : convergenceRate > 0
  methodConvergent : Prop
  convergenceClosed : methodConvergent

def BiCGSTABConvergenceClosed (B : BiCGSTABMethod A) : Prop :=
  B.methodConvergent

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
