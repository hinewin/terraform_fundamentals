### Setup 

1. Clone the repository.

```bash
git clone <repository-url>
cd <repository-name>
```

2. Run setup script.

This repository uses custom Git hooks. To set them up correctly, run the provided setup script:

```bash
./init.sh
```

This script configures Git to use the `.githooks` directory for hooks.

**Hook features**:
-  When you commit changes, the configured Git hooks will automatically execute to perform checks (like `terraform fmt`, for instance).
