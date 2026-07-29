import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure BlastemaPackage where
  progenitorCellRecruitment : Prop
  extracellularMatrixRemodeling : Prop
  proliferativeExpansion : Prop
  morphogenGradient : Prop

structure BlastemaEvidence (B : BlastemaPackage) where
  progenitorCellRecruitmentClosed : B.progenitorCellRecruitment
  extracellularMatrixRemodelingClosed : B.extracellularMatrixRemodeling
  proliferativeExpansionClosed : B.proliferativeExpansion
  morphogenGradientClosed : B.morphogenGradient

def BlastemaClosed (B : BlastemaPackage) : Prop :=
  B.progenitorCellRecruitment ∧ B.extracellularMatrixRemodeling ∧
  B.proliferativeExpansion ∧ B.morphogenGradient

theorem blastema_closed_from_evidence (B : BlastemaPackage) (E : BlastemaEvidence B) :
    BlastemaClosed B := by
  exact And.intro E.progenitorCellRecruitmentClosed
    (And.intro E.extracellularMatrixRemodelingClosed
      (And.intro E.proliferativeExpansionClosed E.morphogenGradientClosed))

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse
