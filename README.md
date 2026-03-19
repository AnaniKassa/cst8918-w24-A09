# About me
### Full name: Anani Thierry Kassa
### Student ID: 041140713

## Steps to follow

Local Repo
   |
   |  git checkout -b add-terraform-validate
   |  <-- create feature branch for workflow changes
   |
   v
Feature Branch: add-terraform-validate
   |
   |  Introduce broken Terraform
   |  git add + git commit --no-verify
   |  git push
   v
GitHub PR (add-terraform-validate → main)
   |
   |  Workflow triggered (action-terraform-verify.yml)
   |
   |  -------------------------------
   |  Job 1: validate (terraform fmt)
   |      - Checks formatting on changed files
   |      - ❌ fails if formatting broken
   |
   |  Job 2: terraform-validate
   |      - Initializes Terraform
   |      - Runs terraform validate
   |      - ❌ fails if syntax/config wrong
   |  -------------------------------
   |
   v
PR Status: ❌ FAILED (red)
   |
   |  Fix Terraform locally
   |  git add + commit
   |  git push
   v
GitHub PR (same branch updated)
   |
   |  Workflow triggered again
   |
   |  -------------------------------
   |  Job 1: validate (terraform fmt)
   |      - ✅ passes (format fixed)
   |
   |  Job 2: terraform-validate
   |      - ✅ passes (syntax fixed)
   |  -------------------------------
   |
   v
PR Status: ✅ PASSED (green)
