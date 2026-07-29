import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  genes : Type u
  regulatoryInteractions : Type v
  expressionLevels : genes → Type w
  networkTopology : Prop
  dynamicsEquation : Prop
  steadyStatesClassified : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  dynamicsEquationClosed : G.dynamicsEquation
  steadyStatesClassifiedClosed : G.steadyStatesClassified

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.networkTopology ∧ G.dynamicsEquation ∧ G.steadyStatesClassified

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro G.networkTopology (And.intro E.dynamicsEquationClosed E.steadyStatesClassifiedClosed)

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse