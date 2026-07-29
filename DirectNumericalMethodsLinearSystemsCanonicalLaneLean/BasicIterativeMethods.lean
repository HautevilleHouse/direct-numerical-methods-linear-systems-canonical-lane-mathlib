import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

structure JacobiMethod (A : AdmissibleNumericalMethod) where
  iterationMatrix : Type
  spectralRadius : ℝ
  spectralRadiusLessThanOne : spectralRadius < 1
  iterationConverges : Prop
  convergenceClosed : iterationConverges

def JacobiConvergenceClosed (J : JacobiMethod A) : Prop :=
  J.spectralRadiusLessThanOne ∧ J.iterationConverges

structure GaussSeidelMethod (A : AdmissibleNumericalMethod) where
  iterationMatrix : Type
  spectralRadius : ℝ
  spectralRadiusLessThanOne : spectralRadius < 1
  iterationConverges : Prop
  convergenceClosed : iterationConverges

def GaussSeidelConvergenceClosed (G : GaussSeidelMethod A) : Prop :=
  G.spectralRadiusLessThanOne ∧ G.iterationConverges

structure SORMethod (A : AdmissibleNumericalMethod) (ω : ℝ) where
  omegaPos : ω > 0
  omegaLessThanTwo : ω < 2
  iterationMatrix : Type
  spectralRadius : ℝ
  spectralRadiusLessThanOne : spectralRadius < 1
  iterationConverges : Prop
  convergenceClosed : iterationConverges

def SORConvergenceClosed (S : SORMethod A ω) : Prop :=
  S.omegaPos ∧ S.omegaLessThanTwo ∧ S.spectralRadiusLessThanOne ∧ S.iterationConverges

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
