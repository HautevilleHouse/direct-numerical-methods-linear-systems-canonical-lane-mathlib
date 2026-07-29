import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

structure Preconditioner (A : AdmissibleNumericalMethod) where
  preconditionMatrix : Type
  invertible : Prop
  approximationQuality : Prop
  conditionNumberImproved : Prop
  preconditionerClosed : invertible ∧ approximationQuality ∧ conditionNumberImproved

def PreconditionerClosed (P : Preconditioner A) : Prop :=
  P.invertible ∧ P.approximationQuality ∧ P.conditionNumberImproved

structure JacobiPreconditioner (A : AdmissibleNumericalMethod) extends Preconditioner A where
  diagonalScaling : Prop
  diagonalScalingClosed : diagonalScaling

def JacobiPreconditionerClosed (J : JacobiPreconditioner A) : Prop :=
  PreconditionerClosed J.toPreconditioner ∧ J.diagonalScaling

structure ILUPreconditioner (A : AdmissibleNumericalMethod) extends Preconditioner A where
  incompleteLU : Prop
  fillLevel : ℕ
  incompleteLUClosed : incompleteLU

def ILUPreconditionerClosed (I : ILUPreconditioner A) : Prop :=
  PreconditionerClosed I.toPreconditioner ∧ I.incompleteLU

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
