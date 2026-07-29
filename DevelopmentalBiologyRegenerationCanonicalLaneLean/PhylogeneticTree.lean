import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesList : Prop
  geneticDistanceMatrix : Prop
  treeTopology : Prop
  branchLengths : Prop
  molecularClock : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  speciesListClosed : P.speciesList
  geneticDistanceMatrixClosed : P.geneticDistanceMatrix
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  molecularClockClosed : P.molecularClock

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.speciesList ∧ P.geneticDistanceMatrix ∧ P.treeTopology ∧ P.branchLengths ∧ P.molecularClock

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.speciesListClosed
    (And.intro E.geneticDistanceMatrixClosed
      (And.intro E.treeTopologyClosed
        (And.intro E.branchLengthsClosed E.molecularClockClosed)))

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse
