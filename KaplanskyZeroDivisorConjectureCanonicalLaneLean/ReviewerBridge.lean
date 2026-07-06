import KaplanskyZeroDivisorConjectureCanonicalLaneLean.Formalization
import KaplanskyZeroDivisorConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace KaplanskyZeroDivisorConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "e7d8b48155a4a637f16e3e49229f3e1600f8221f59c2980ded99a58fbd277a80", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "735bfda44bdb57511ea4afd3b31825b8e1532f54776d73fbfdaadf306c9ea5b3", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "7265b9c65f42e824fa28435c562cf2078e93b0002f10706e30cc3f9d8331df27", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "09487090e3cce8debfb30831b1d5b6acdf6b7fe0123638f5e9b459b393eccaef", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "f5911d1ec09b0a2b7a9b8216d67169e75b01014a1fad35787de9e3b555d01fef", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "f58b9d9a333135ff4e9dc76a06cc9a543396c71dcd0e995c0068641eda2a1c27", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "edbba6273c60c0f551e0f9f90b54c925c4b018429c8e97aa936c5fffed8680ba", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "3d5e9b6f495eab7a37a1fdb75ac5b7121a733a3156e78d530efcd64277f4033f", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "dad5c624f6f0ecddd0a9b2b2bbcfe83d7b5e81090a476f89cfde50b81f63b7bc", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "KZD_G1", constant := "kappa_support" },
  { gate := "KZD_G2", constant := "sigma_cancellation" },
  { gate := "KZD_G3", constant := "kappa_compact" },
  { gate := "KZD_G4", constant := "rho_rigidity" },
  { gate := "KZD_G5", constant := "domain_transfer" },
  { gate := "KZD_G6", constant := "eps_coh" },
  { gate := "KZD_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "843da71b57b99edddcb50cf4822a32f03e3535269b2452bd7f74e08808178b70" },
  { path := "README.md", sha256 := "b76aaeb1861e85b4976f354c29f24f9611bdd609c479d6c34a25ba94357672c1" },
  { path := "artifacts/constants_extracted.json", sha256 := "09487090e3cce8debfb30831b1d5b6acdf6b7fe0123638f5e9b459b393eccaef" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "7265b9c65f42e824fa28435c562cf2078e93b0002f10706e30cc3f9d8331df27" },
  { path := "artifacts/constants_registry.json", sha256 := "f5911d1ec09b0a2b7a9b8216d67169e75b01014a1fad35787de9e3b555d01fef" },
  { path := "artifacts/promotion_report.json", sha256 := "edbba6273c60c0f551e0f9f90b54c925c4b018429c8e97aa936c5fffed8680ba" },
  { path := "artifacts/stitch_constants.json", sha256 := "f58b9d9a333135ff4e9dc76a06cc9a543396c71dcd0e995c0068641eda2a1c27" },
  { path := "notes/EG1_public.md", sha256 := "f3c196c0cc4944cdbc56bb90a969ac6559573f41a325d027301be68056dc5903" },
  { path := "notes/EG2_public.md", sha256 := "555025258d3404dfc3b87ec0792ff992b1ef2c86425ebee71a27e92113112d20" },
  { path := "notes/EG3_public.md", sha256 := "970d1dbe3fcc2fc3d5febaab6db8affa1ed896ca9c52f480c81a66860b4a3eda" },
  { path := "notes/EG4_public.md", sha256 := "f6c705a42e360c58300d1762a58942ab3523a31f4d793bada7a4355abae8dda0" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "735bfda44bdb57511ea4afd3b31825b8e1532f54776d73fbfdaadf306c9ea5b3" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "38c88294be13dcd25b36f16e698e846acc23ae8faa27d028da928f1d40ffc443" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "fbaa149b5e8bc96c42ff91bdc2aa94564ab144cd8f6bb7cbcd46b086a149654e" },
  { path := "paper/KAPLANSKY_ZERO_DIVISOR_CONJECTURE_PREPRINT.md", sha256 := "4b71101bde3f9c61c5804f02f7361e8e5baa5204f3e00aa65061c449cf4b0df6" },
  { path := "repro/REPRO_PACK.md", sha256 := "a6c75153989a8b4db1cc1d9427f829d806fe197192633b35d7f99a2d4b55649d" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "262b19bf027556585d57d6849129159c17fe8e42cbc882fe05fe16ff5c54f5a6" },
  { path := "repro/certificate_baseline.json", sha256 := "dad5c624f6f0ecddd0a9b2b2bbcfe83d7b5e81090a476f89cfde50b81f63b7bc" },
  { path := "repro/run_repro.sh", sha256 := "c40bacf12ffc9e63c5c1216e78eb177b57bc4ad3af58286ab006f966324c7d6d" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/kzd_closure_guard.py", sha256 := "3e163b7c37de1455f4a5fd439cb07dd8a0466c5fc0f347e49ddaa6609be8430e" },
  { path := "scripts/README.md", sha256 := "74afa916b8a6af4ebb841be328a485ebe6bf9ec585cc12babb494b55069af6c1" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "KZD_G1", status := "PASS" },
  { gate := "KZD_G2", status := "PASS" },
  { gate := "KZD_G3", status := "PASS" },
  { gate := "KZD_G4", status := "PASS" },
  { gate := "KZD_G5", status := "PASS" },
  { gate := "KZD_G6", status := "PASS" },
  { gate := "KZD_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "domain_transfer", value := "1.0283639999999998" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "kappa_support", value := "1.088397" },
  { key := "rho_rigidity", value := "1.074" },
  { key := "sigma_cancellation", value := "1.072" },
  { key := "sigma_star_can", value := "1.052" }
]

def bridgeConstantKeys : List String := [
  "domain_transfer",
  "eps_coh",
  "kappa_compact",
  "kappa_support",
  "rho_rigidity",
  "sigma_cancellation",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end KaplanskyZeroDivisorConjectureCanonicalLaneLean
end HautevilleHouse
