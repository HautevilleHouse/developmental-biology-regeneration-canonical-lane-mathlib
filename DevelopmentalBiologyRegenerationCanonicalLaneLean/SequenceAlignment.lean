import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : Prop
  targetSequence : Prop
  alignmentScore : Prop
  gapPenalty : Prop
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  querySequenceClosed : S.querySequence
  targetSequenceClosed : S.targetSequence
  alignmentScoreClosed : S.alignmentScore
  gapPenaltyClosed : S.gapPenalty
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.querySequence ∧ S.targetSequence ∧ S.alignmentScore ∧ S.gapPenalty ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro E.querySequenceClosed
    (And.intro E.targetSequenceClosed
      (And.intro E.alignmentScoreClosed
        (And.intro E.gapPenaltyClosed E.optimalAlignmentClosed)))

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse
