import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure MatrixStructurePackage where
  matrixType : Type u
  entries : matrixType -> Nat -> Nat -> Float
  dimension : Nat
  nonzeroPattern : Prop
  diagonalDominance : Prop
  symmetry : Prop

structure MatrixStructureEvidence (M : MatrixStructurePackage) where
  dimensionClosed : M.dimension > 0
  nonzeroPatternClosed : M.nonzeroPattern
  diagonalDominanceClosed : M.diagonalDominance
  symmetryClosed : M.symmetry

def MatrixStructureClosed (M : MatrixStructurePackage) : Prop :=
  M.dimension > 0 ∧ M.nonzeroPattern ∧ M.diagonalDominance ∧ M.symmetry

theorem matrix_structure_closed_from_evidence (M : MatrixStructurePackage) (E : MatrixStructureEvidence M) : MatrixStructureClosed M := by
  exact And.intro E.dimensionClosed (And.intro E.nonzeroPatternClosed (And.intro E.diagonalDominanceClosed E.symmetryClosed))

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse