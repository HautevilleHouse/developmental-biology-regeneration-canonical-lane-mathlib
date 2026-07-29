import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerDistance : ℝ
  recombinationFraction : ℝ
  lodScore : ℝ
  linkageSignificant : Prop

structure LinkageEvidence (L : LinkageAnalysisPackage) where
  linkageSignificantClosed : L.linkageSignificant

def LinkageClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageSignificant

theorem linkage_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageEvidence L) : LinkageClosed L := by
  exact E.linkageSignificantClosed

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse