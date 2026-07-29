import ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean.ContiguousRelations

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure MonodromyRepresentationPackage {O : HypergeometricObject}
    (C : ContiguousRelationsPackage O) where
  monodromyGroup : Prop
  monodromyMatrices : Prop
  connectionFormulas : Prop
  kummerSolutions : Prop

structure MonodromyRepresentationEvidence {O : HypergeometricObject}
    {C : ContiguousRelationsPackage O} (M : MonodromyRepresentationPackage C) where
  monodromyGroupClosed : M.monodromyGroup
  monodromyMatricesClosed : M.monodromyMatrices
  connectionFormulasClosed : M.connectionFormulas
  kummerSolutionsClosed : M.kummerSolutions

def MonodromyRepresentationClosed {O : HypergeometricObject}
    {C : ContiguousRelationsPackage O} (M : MonodromyRepresentationPackage C) : Prop :=
  M.monodromyGroup ∧ M.monodromyMatrices ∧ M.connectionFormulas ∧ M.kummerSolutions

theorem monodromy_representation_closed_from_evidence {O : HypergeometricObject}
    {C : ContiguousRelationsPackage O} (M : MonodromyRepresentationPackage C)
    (E : MonodromyRepresentationEvidence M) : MonodromyRepresentationClosed M := by
  exact And.intro E.monodromyGroupClosed (And.intro E.monodromyMatricesClosed (And.intro E.connectionFormulasClosed E.kummerSolutionsClosed))

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse