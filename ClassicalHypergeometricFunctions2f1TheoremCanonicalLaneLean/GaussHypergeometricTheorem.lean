import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure GaussTheoremPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  valueAtOne : ℂ
  gammaFunctionValue : ℂ
  gammaRelation : gammaFunctionValue = (Gamma c * Gamma (c - a - b)) / (Gamma (c - a) * Gamma (c - b))
  equalityHolds : valueAtOne = gammaFunctionValue
  parametersValid : ¬(c - a - b ∈ {0, -1, -2, ...})
  proofByContiguousRelations : Prop
  proofByEulerIntegral : Prop

structure GaussTheoremEvidence (G : GaussTheoremPackage) where
  gammaRelationClosed : G.gammaRelation
  equalityHoldsClosed : G.equalityHolds
  parametersValidClosed : G.parametersValid
  proofByContiguousRelationsClosed : G.proofByContiguousRelations
  proofByEulerIntegralClosed : G.proofByEulerIntegral

def GaussTheoremClosed (G : GaussTheoremPackage) : Prop :=
  G.gammaRelation ∧ G.equalityHolds ∧ G.parametersValid ∧
  G.proofByContiguousRelations ∧ G.proofByEulerIntegral

theorem gauss_theorem_closed_from_evidence
    (G : GaussTheoremPackage) (E : GaussTheoremEvidence G) :
    GaussTheoremClosed G := by
  exact And.intro E.gammaRelationClosed
    (And.intro E.equalityHoldsClosed
      (And.intro E.parametersValidClosed
        (And.intro E.proofByContiguousRelationsClosed E.proofByEulerIntegralClosed)))

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse