import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure StemCellPoolPackage where
  quiescentState : Prop
  proliferationSignal : Prop
  asymmetricDivision : Prop
  nicheAttachment : Prop

structure StemCellPoolEvidence (S : StemCellPoolPackage) where
  quiescentStateClosed : S.quiescentState
  proliferationSignalClosed : S.proliferationSignal
  asymmetricDivisionClosed : S.asymmetricDivision
  nicheAttachmentClosed : S.nicheAttachment

def StemCellPoolClosed (S : StemCellPoolPackage) : Prop :=
  S.quiescentState ∧ S.proliferationSignal ∧ S.asymmetricDivision ∧ S.nicheAttachment

theorem stem_cell_pool_closed_from_evidence (S : StemCellPoolPackage) (E : StemCellPoolEvidence S) :
    StemCellPoolClosed S := by
  exact And.intro E.quiescentStateClosed
    (And.intro E.proliferationSignalClosed
      (And.intro E.asymmetricDivisionClosed E.nicheAttachmentClosed))

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse