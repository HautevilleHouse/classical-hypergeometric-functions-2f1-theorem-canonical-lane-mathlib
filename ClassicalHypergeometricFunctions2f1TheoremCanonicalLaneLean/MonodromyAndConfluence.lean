import ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean.QuadraticTransformations

/-!
# Monodromy and Confluence Package
-/

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure MonodromyAndConfluencePackage {G : GaussContiguousRelationsPackage}
    {E : EulerIntegralRepresentationPackage G}
    {Q : QuadraticTransformationsPackage G E} where
  monodromyGroup : Prop
  confluenceLimit : Prop
  singularityClassification : Prop

structure MonodromyAndConfluenceEvidence {G : GaussContiguousRelationsPackage}
    {E : EulerIntegralRepresentationPackage G}
    {Q : QuadraticTransformationsPackage G E}
    (M : MonodromyAndConfluencePackage G E Q) where
  monodromyGroupClosed : M.monodromyGroup
  confluenceLimitClosed : M.confluenceLimit
  singularityClassificationClosed : M.singularityClassification

def MonodromyAndConfluenceClosed {G : GaussContiguousRelationsPackage}
    {E : EulerIntegralRepresentationPackage G}
    {Q : QuadraticTransformationsPackage G E}
    (M : MonodromyAndConfluencePackage G E Q) : Prop :=
  M.monodromyGroup ∧ M.confluenceLimit ∧ M.singularityClassification

theorem monodromy_and_confluence_closed_from_evidence
    {G : GaussContiguousRelationsPackage} {E : EulerIntegralRepresentationPackage G}
    {Q : QuadraticTransformationsPackage G E}
    (M : MonodromyAndConfluencePackage G E Q) (Ev : MonodromyAndConfluenceEvidence M) :
    MonodromyAndConfluenceClosed M := by
  exact And.intro Ev.monodromyGroupClosed
    (And.intro Ev.confluenceLimitClosed Ev.singularityClassificationClosed)

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse