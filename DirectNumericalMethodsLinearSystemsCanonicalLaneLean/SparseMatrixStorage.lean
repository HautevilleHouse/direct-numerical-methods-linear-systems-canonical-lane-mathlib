import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsCanonicalLaneLean

structure StorageFormat where
  formatName : String
  storageComplexity : Nat
  accessTime : Nat
  modificationTime : Nat

struct COOFormat extends StorageFormat where
  rowIndices : List Nat
  columnIndices : List Nat
  values : List Float
  duplicateEntryHandling : Prop

struct CSRFormat extends StorageFormat where
  rowPointers : List Nat
  columnIndices : List Nat
  values : List Float
  efficientRowAccess : Prop

struct CSCFormat extends StorageFormat where
  columnPointers : List Nat
  rowIndices : List Nat
  values : List Float
  efficientColumnAccess : Prop

struct DIAFormat extends StorageFormat where
  diagonals : List (List Float)
  offsets : List Int
  diagonalStorage : Prop

struct ELLFormat extends StorageFormat where
  data : List (List Float)
  indices : List (List Nat)
  constantRowLength : Prop

end DirectNumericalMethodsLinearSystemsCanonicalLaneLean
end HautevilleHouse
