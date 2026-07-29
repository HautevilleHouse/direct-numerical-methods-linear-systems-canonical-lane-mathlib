import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure LUDecompositionPackage where
  factorizationExists : Prop
  lowerTriangular : Prop
  upperTriangular : Prop
  permutationHandling : Prop
  factorizationExistsClosed : factorizationExists
  lowerTriangularClosed : lowerTriangular
  upperTriangularClosed : upperTriangular
  permutationHandlingClosed : permutationHandling

structure LUDecompositionEvidence (P : LUDecompositionPackage) where
  factorizationExistsClosed : P.factorizationExists
  lowerTriangularClosed : P.lowerTriangular
  upperTriangularClosed : P.upperTriangular
  permutationHandlingClosed : P.permutationHandling

def LUDecompositionClosed (P : LUDecompositionPackage) : Prop :=
  P.factorizationExists ∧ P.lowerTriangular ∧ P.upperTriangular ∧ P.permutationHandling

theorem lu_decomposition_closed_from_evidence (P : LUDecompositionPackage) (E : LUDecompositionEvidence P) : LUDecompositionClosed P := by
  exact And.intro E.factorizationExistsClosed (And.intro E.lowerTriangularClosed (And.intro E.upperTriangularClosed E.permutationHandlingClosed))

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse
