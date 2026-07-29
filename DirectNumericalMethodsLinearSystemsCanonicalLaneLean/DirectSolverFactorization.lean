import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure DirectSolverPackage {M : MatrixStructurePackage} (I : IterativeMethodPackage M) where
  factorizationType : String
  factors : Type u
  stability : Prop
  sparsityPreservation : Prop

structure DirectSolverEvidence {M : MatrixStructurePackage} {I : IterativeMethodPackage M} (D : DirectSolverPackage I) where
  factorsMatchMatrix : Prop
  stabilityClosed : D.stability
  sparsityPreservationClosed : D.sparsityPreservation

def DirectSolverClosed {M : MatrixStructurePackage} {I : IterativeMethodPackage M} (D : DirectSolverPackage I) : Prop :=
  D.factorsMatchMatrix ∧ D.stability ∧ D.sparsityPreservation

theorem direct_solver_closed_from_evidence {M : MatrixStructurePackage} {I : IterativeMethodPackage M} (D : DirectSolverPackage I) (E : DirectSolverEvidence D) : DirectSolverClosed D := by
  exact And.intro E.factorsMatchMatrix (And.intro E.stabilityClosed E.sparsityPreservationClosed)

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse