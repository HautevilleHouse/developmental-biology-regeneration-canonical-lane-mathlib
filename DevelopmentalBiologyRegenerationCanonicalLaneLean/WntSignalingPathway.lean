import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure WntSignalingPathwayPackage where
  wntLigand : Type u
  receptor : Type v
  betaCatenin : Type w
  targetGenes : Type x
  signalTransduction : Prop
  transcriptionalActivation : Prop
  feedbackRegulation : Prop

structure WntSignalingPathwayEvidence (W : WntSignalingPathwayPackage) where
  signalTransductionClosed : W.signalTransduction
  transcriptionalActivationClosed : W.transcriptionalActivation
  feedbackRegulationClosed : W.feedbackRegulation

def WntSignalingPathwayClosed (W : WntSignalingPathwayPackage) : Prop :=
  W.signalTransduction ∧ W.transcriptionalActivation ∧ W.feedbackRegulation

theorem wnt_signaling_pathway_closed_from_evidence
    (W : WntSignalingPathwayPackage) (E : WntSignalingPathwayEvidence W) :
    WntSignalingPathwayClosed W := by
  exact And.intro E.signalTransductionClosed
    (And.intro E.transcriptionalActivationClosed E.feedbackRegulationClosed)

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse