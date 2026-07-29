import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure SignalingPathwaysPackage where
  wntBetaCatenin : Prop
  fgfSignaling : Prop
  bmpPathway : Prop
  notchDelta : Prop
  hedgehog : Prop

structure SignalingPathwaysEvidence (S : SignalingPathwaysPackage) where
  wntBetaCateninClosed : S.wntBetaCatenin
  fgfSignalingClosed : S.fgfSignaling
  bmpPathwayClosed : S.bmpPathway
  notchDeltaClosed : S.notchDelta
  hedgehogClosed : S.hedgehog

def SignalingPathwaysClosed (S : SignalingPathwaysPackage) : Prop :=
  S.wntBetaCatenin ∧ S.fgfSignaling ∧ S.bmpPathway ∧
  S.notchDelta ∧ S.hedgehog

theorem signaling_pathways_closed_from_evidence (S : SignalingPathwaysPackage)
    (E : SignalingPathwaysEvidence S) : SignalingPathwaysClosed S := by
  exact And.intro E.wntBetaCateninClosed
    (And.intro E.fgfSignalingClosed
      (And.intro E.bmpPathwayClosed
        (And.intro E.notchDeltaClosed E.hedgehogClosed)))

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse
