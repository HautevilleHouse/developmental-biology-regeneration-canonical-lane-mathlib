import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesList : List String
  geneticDistanceMatrix : List (List ℝ)
  treeTopology : Prop
  treeConsistent : Prop

structure PhylogeneticEvidence (P : PhylogeneticTreePackage) where
  treeConsistentClosed : P.treeConsistent

def PhylogeneticClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeConsistent

theorem phylogenetic_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticEvidence P) : PhylogeneticClosed P := by
  exact E.treeConsistentClosed

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse