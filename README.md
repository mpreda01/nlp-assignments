# Natural Language Processing Assignments

This repository contains the solution to the 2 assignments for the [course](https://www.unibo.it/en/study/course-units-transferable-skills-moocs/course-unit-catalogue/course-unit/2025/446602)
*Natural Language Processing* taught at [unibo](https://www.unibo.it) for the a.y. 25/26 by [Prof. P. Torroni](https://scholar.google.com/citations?user=uOZZjwsAAAAJ).

---

## Setup

```sh
# Clone repository
git clone https://github.com/mpreda01/nlp-assignments
cd nlp-assignments

# Create virtual environment
python3 -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate

# Install dependencies
pip install ".[assignment1]"      # Assignment 1
pip install ".[assignment2]"      # Assignment 2
pip install ".[dev]"              # dev tools
# Or with uv:
uv sync --extra assignment1       # Assignment 1
uv sync --extra assignment2       # Assignment 2
uv sync --extra dev               # With dev tools
```

### License

The code in this repository is [MIT](./LICENSE) licensed.
