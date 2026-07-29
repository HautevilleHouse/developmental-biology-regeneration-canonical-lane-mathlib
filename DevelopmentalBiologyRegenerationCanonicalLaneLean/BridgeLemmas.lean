import DevelopmentalBiologyRegenerationCanonicalLaneLean.RegenerationAdmissibleClass
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RegenerationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse
