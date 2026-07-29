import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystems

structure LUFactorizationPackage where
  matrix : Type
  lowerTriangular : Type
  upperTriangular : Type
  permutation : Type
  factorizationExists : Prop
  stability : Prop
  errorEstimate : Prop

structure LUFactorizationEvidence (P : LUFactorizationPackage) where
  factorizationExistsClosed : P.factorizationExists
  stabilityClosed : P.stability
  errorEstimateClosed : P.errorEstimate

def LUFactorizationClosed (P : LUFactorizationPackage) : Prop :=
  P.factorizationExists ∧ P.stability ∧ P.errorEstimate

theorem lu_factorization_closed_from_evidence
    (P : LUFactorizationPackage) (E : LUFactorizationEvidence P) :
    LUFactorizationClosed P := by
  exact And.intro E.factorizationExistsClosed
    (And.intro E.stabilityClosed E.errorEstimateClosed)

end DirectNumericalMethodsLinearSystems
end HautevilleHouse
