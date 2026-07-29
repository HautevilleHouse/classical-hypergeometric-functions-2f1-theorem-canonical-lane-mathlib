import ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean.HypergeometricObject

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure ContiguousRelationsPackage (O : HypergeometricObject) where
  gaussRelation : Prop
  eulerRelation : Prop
  pfaffRelation : Prop
  differentiationFormula : Prop
  integralRepresentation : Prop

structure ContiguousRelationsEvidence {O : HypergeometricObject} (C : ContiguousRelationsPackage O) where
  gaussRelationClosed : C.gaussRelation
  eulerRelationClosed : C.eulerRelation
  pfaffRelationClosed : C.pfaffRelation
  differentiationFormulaClosed : C.differentiationFormula
  integralRepresentationClosed : C.integralRepresentation

def ContiguousRelationsClosed {O : HypergeometricObject} (C : ContiguousRelationsPackage O) : Prop :=
  C.gaussRelation ∧ C.eulerRelation ∧ C.pfaffRelation ∧ C.differentiationFormula ∧ C.integralRepresentation

theorem contiguous_relations_closed_from_evidence {O : HypergeometricObject}
    (C : ContiguousRelationsPackage O) (E : ContiguousRelationsEvidence C) :
    ContiguousRelationsClosed C := by
  exact And.intro E.gaussRelationClosed (And.intro E.eulerRelationClosed (And.intro E.pfaffRelationClosed (And.intro E.differentiationFormulaClosed E.integralRepresentationClosed)))

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse