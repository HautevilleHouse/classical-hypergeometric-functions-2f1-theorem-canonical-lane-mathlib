import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure ContiguousRelationIdentity where
  adjacentSeries : HypergeometricSeries → HypergeometricSeries
  identityFormula : Prop
  proofTerm : Prop

structure ContiguousRelationEvidence (C : ContiguousRelationIdentity) where
  identityFormulaClosed : C.identityFormula
  proofTermClosed : C.proofTerm

def ContiguousRelationClosed (C : ContiguousRelationIdentity) : Prop :=
  C.identityFormula ∧ C.proofTerm

theorem contiguous_relation_closed_from_evidence (C : ContiguousRelationIdentity) (E : ContiguousRelationEvidence C) :
    ContiguousRelationClosed C := by
  exact And.intro E.identityFormulaClosed E.proofTermClosed

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse