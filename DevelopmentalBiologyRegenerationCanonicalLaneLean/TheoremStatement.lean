import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def developmentalBiologyRegenerationTheoremStatement : TheoremStatement := {
  sourceKey := "developmental-biology-regeneration-canonical-lane",
  theoremName := "Developmental Biology Regeneration",
  theoremObject := "Regeneration mechanisms",
  classicalBoundary := "classical boundary carried by formalization",
  manifoldConstrainedStatement := "Admissible-class closure for regeneration theorem",
  certificateLane := "regeneration_constrained",
  carriedRemainder := "remaining open boundary"
}

theorem theorem_statement_defined : developmentalBiologyRegenerationTheoremStatement.sourceKey = "developmental-biology-regeneration-canonical-lane" := by
  rfl

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse