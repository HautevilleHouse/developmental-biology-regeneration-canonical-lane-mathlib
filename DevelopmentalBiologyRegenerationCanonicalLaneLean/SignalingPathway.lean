import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure SignalingPathwayPackage where
  wntSignalCascade : Prop
  bmpSignalTransduction : Prop
  fgfReceptorActivation : Prop
  notchDeltaLigand : Prop

structure SignalingPathwayEvidence (S : SignalingPathwayPackage) where
  wntSignalCascadeClosed : S.wntSignalCascade
  bmpSignalTransductionClosed : S.bmpSignalTransduction
  fgfReceptorActivationClosed : S.fgfReceptorActivation
  notchDeltaLigandClosed : S.notchDeltaLigand

def SignalingPathwayClosed (S : SignalingPathwayPackage) : Prop :=
  S.wntSignalCascade ∧ S.bmpSignalTransduction ∧ S.fgfReceptorActivation ∧ S.notchDeltaLigand

theorem signaling_pathway_closed_from_evidence (S : SignalingPathwayPackage) (E : SignalingPathwayEvidence S) :
    SignalingPathwayClosed S := by
  exact And.intro E.wntSignalCascadeClosed
    (And.intro E.bmpSignalTransductionClosed
      (And.intro E.fgfReceptorActivationClosed E.notchDeltaLigandClosed))

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse