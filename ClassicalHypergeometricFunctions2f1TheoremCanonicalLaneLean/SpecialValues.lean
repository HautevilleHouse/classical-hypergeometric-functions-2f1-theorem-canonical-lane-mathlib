import ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean.MonodromyRepresentation

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure SpecialValuesPackage {O : HypergeometricObject}
    {C : ContiguousRelationsPackage O}
    {M : MonodromyRepresentationPackage C} where
  gaussSummation : Prop
  chuVandermonde : Prop
  kummerSummation : Prop
  quadraticTransformations : Prop

structure SpecialValuesEvidence {O : HypergeometricObject}
    {C : ContiguousRelationsPackage O}
    {M : MonodromyRepresentationPackage C}
    (S : SpecialValuesPackage M) where
  gaussSummationClosed : S.gaussSummation
  chuVandermondeClosed : S.chuVandermonde
  kummerSummationClosed : S.kummerSummation
  quadraticTransformationsClosed : S.quadraticTransformations

def SpecialValuesClosed {O : HypergeometricObject}
    {C : ContiguousRelationsPackage O}
    {M : MonodromyRepresentationPackage C}
    (S : SpecialValuesPackage M) : Prop :=
  S.gaussSummation ∧ S.chuVandermonde ∧ S.kummerSummation ∧ S.quadraticTransformations

theorem special_values_closed_from_evidence {O : HypergeometricObject}
    {C : ContiguousRelationsPackage O} {M : MonodromyRepresentationPackage C}
    (S : SpecialValuesPackage M) (E : SpecialValuesEvidence S) :
    SpecialValuesClosed S := by
  exact And.intro E.gaussSummationClosed (And.intro E.chuVandermondeClosed (And.intro E.kummerSummationClosed E.quadraticTransformationsClosed))

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse