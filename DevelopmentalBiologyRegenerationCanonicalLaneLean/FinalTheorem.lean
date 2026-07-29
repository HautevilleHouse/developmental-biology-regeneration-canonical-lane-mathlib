import DevelopmentalBiologyRegenerationCanonicalLaneLean.GateLemmas
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

def ConstrainedRegenerationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_regeneration_endgame (A : AdmissibleClass) :
    ConstrainedRegenerationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse
