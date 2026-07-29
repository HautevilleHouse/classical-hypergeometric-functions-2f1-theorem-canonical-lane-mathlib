import ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean.AdmissibleClass

/-!
# Gauss Contiguous Relations Package
-/

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure GaussContiguousRelationsPackage where
  contiguousRelationA : Prop
  contiguousRelationB : Prop
  contiguousRelationC : Prop

structure GaussContiguousRelationsEvidence (P : GaussContiguousRelationsPackage) where
  contiguousRelationAClosed : P.contiguousRelationA
  contiguousRelationBClosed : P.contiguousRelationB
  contiguousRelationCClosed : P.contiguousRelationC

def GaussContiguousRelationsClosed (P : GaussContiguousRelationsPackage) : Prop :=
  P.contiguousRelationA ∧ P.contiguousRelationB ∧ P.contiguousRelationC

theorem gauss_contiguous_relations_closed_from_evidence
    (P : GaussContiguousRelationsPackage) (E : GaussContiguousRelationsEvidence P) :
    GaussContiguousRelationsClosed P := by
  exact And.intro E.contiguousRelationAClosed
    (And.intro E.contiguousRelationBClosed E.contiguousRelationCClosed)

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse