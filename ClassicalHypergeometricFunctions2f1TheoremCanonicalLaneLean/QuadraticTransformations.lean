import ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean.EulerIntegralRepresentation

/-!
# Quadratic Transformations Package
-/

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure QuadraticTransformationsPackage {G : GaussContiguousRelationsPackage}
    {E : EulerIntegralRepresentationPackage G} where
  pfaffTransformation : Prop
  eulerTransformation : Prop
  quadraticTransformation : Prop

structure QuadraticTransformationsEvidence {G : GaussContiguousRelationsPackage}
    {E : EulerIntegralRepresentationPackage G}
    (Q : QuadraticTransformationsPackage G E) where
  pfaffTransformationClosed : Q.pfaffTransformation
  eulerTransformationClosed : Q.eulerTransformation
  quadraticTransformationClosed : Q.quadraticTransformation

def QuadraticTransformationsClosed {G : GaussContiguousRelationsPackage}
    {E : EulerIntegralRepresentationPackage G}
    (Q : QuadraticTransformationsPackage G E) : Prop :=
  Q.pfaffTransformation ∧ Q.eulerTransformation ∧ Q.quadraticTransformation

theorem quadratic_transformations_closed_from_evidence
    {G : GaussContiguousRelationsPackage} {E : EulerIntegralRepresentationPackage G}
    (Q : QuadraticTransformationsPackage G E) (Ev : QuadraticTransformationsEvidence Q) :
    QuadraticTransformationsClosed Q := by
  exact And.intro Ev.pfaffTransformationClosed
    (And.intro Ev.eulerTransformationClosed Ev.quadraticTransformationClosed)

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse