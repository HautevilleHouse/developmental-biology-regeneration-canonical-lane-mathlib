import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure RegenerationGeneExpressionPackage where
  differentiallyExpressedGenes : List String
  logFoldChange : List ℝ
  adjustedPValue : List ℝ
  significantPathways : List String
  expressionPatternsClosed : Prop

def RegenerationGeneExpressionClosed (R : RegenerationGeneExpressionPackage) : Prop :=
  R.expressionPatternsClosed ∧ R.significantPathways.length ≥ 1

structure RegenerationGeneExpressionEvidence (R : RegenerationGeneExpressionPackage) where
  expressionPatternsClosed : R.expressionPatternsClosed
  significantPathwaysFound : R.significantPathways.length ≥ 1

theorem regeneration_gene_expression_closed_from_evidence
    (R : RegenerationGeneExpressionPackage)
    (E : RegenerationGeneExpressionEvidence R) : RegenerationGeneExpressionClosed R := by
  exact And.intro E.expressionPatternsClosed E.significantPathwaysFound

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse