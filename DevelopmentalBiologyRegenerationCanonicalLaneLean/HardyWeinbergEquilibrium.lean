import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure HardyWeinbergPackage where
  alleleFreqP : Prop
  alleleFreqQ : Prop
  genotypeFreqAA : Prop
  genotypeFreqAa : Prop
  genotypeFreqaa : Prop
  equilibriumCondition : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  alleleFreqPClosed : H.alleleFreqP
  alleleFreqQClosed : H.alleleFreqQ
  genotypeFreqAAClosed : H.genotypeFreqAA
  genotypeFreqAaClosed : H.genotypeFreqAa
  genotypeFreqaaClosed : H.genotypeFreqaa
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.alleleFreqP ∧ H.alleleFreqQ ∧ H.genotypeFreqAA ∧ H.genotypeFreqAa ∧ H.genotypeFreqaa ∧ H.equilibriumCondition

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.alleleFreqPClosed
    (And.intro E.alleleFreqQClosed
      (And.intro E.genotypeFreqAAClosed
        (And.intro E.genotypeFreqAaClosed
          (And.intro E.genotypeFreqaaClosed E.equilibriumConditionClosed))))

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse
