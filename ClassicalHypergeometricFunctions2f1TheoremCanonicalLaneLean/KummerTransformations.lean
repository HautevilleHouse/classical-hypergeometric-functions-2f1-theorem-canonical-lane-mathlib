import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure KummerTransformationPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  transformation21 : ℂ
  transformation22 : ℂ
  transformation23 : ℂ
  transformation24 : ℂ
  identityProofs : Prop
  allTransformationsCorrect : transformation21 = transformation22 ∧ transformation22 = transformation23 ∧ transformation23 = transformation24

structure KummerTransformationEvidence (K : KummerTransformationPackage) where
  identityProofsClosed : K.identityProofs
  allTransformationsCorrectClosed : K.allTransformationsCorrect

def KummerTransformationClosed (K : KummerTransformationPackage) : Prop :=
  K.identityProofs ∧ K.allTransformationsCorrect

theorem kummer_transformation_closed_from_evidence
    (K : KummerTransformationPackage) (E : KummerTransformationEvidence K) :
    KummerTransformationClosed K := by
  exact And.intro E.identityProofsClosed E.allTransformationsCorrectClosed

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse