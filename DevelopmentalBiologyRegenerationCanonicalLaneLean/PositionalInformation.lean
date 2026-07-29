import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure PositionalInformationPackage where
  hoxGeneExpression : Prop
  retinoicAcidGradient : Prop
  positionalMemory : Prop
  patternReestablishment : Prop

structure PositionalInformationEvidence (P : PositionalInformationPackage) where
  hoxGeneExpressionClosed : P.hoxGeneExpression
  retinoicAcidGradientClosed : P.retinoicAcidGradient
  positionalMemoryClosed : P.positionalMemory
  patternReestablishmentClosed : P.patternReestablishment

def PositionalInformationClosed (P : PositionalInformationPackage) : Prop :=
  P.hoxGeneExpression ∧ P.retinoicAcidGradient ∧
  P.positionalMemory ∧ P.patternReestablishment

theorem positional_information_closed_from_evidence (P : PositionalInformationPackage)
    (E : PositionalInformationEvidence P) : PositionalInformationClosed P := by
  exact And.intro E.hoxGeneExpressionClosed
    (And.intro E.retinoicAcidGradientClosed
      (And.intro E.positionalMemoryClosed E.patternReestablishmentClosed))

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse
