#!/usr/bin/env bash

# Check if nbstripout is installed
if ! command -v nbstripout &>/dev/null; then
  echo "Error: nbstripout is not installed"
  echo "Please install it along with other dev dependencies via"
  echo "pip install .[dev]"
  exit 1
fi

# Check if at least one argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <file1.ipynb> [file2.ipynb ...]"
  exit 1
fi

for file in "$@"; do
  if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist"
    exit 1
  fi
  echo "Processing $file..."
  # NOTE: the metadata.kernelspec is kept since quarto needs it to start
  # the kernel and execute the cells when rendering
  nbstripout --extra-keys="metadata.celltoolbar " \
    "metadata.language_info.codemirror_mode.version" \
    "metadata.language_info.pygments_lexer" \
    "metadata.language_info.version metadata.toc" \
    "metadata.notify_time metadata.varInspector" \
    "cell.metadata.heading_collapsed" \
    "cell.metadata.hidden" \
    "cell.metadata.code_folding" \
    "cell.metadata.tags" \
    "cell.metadata.init_cell" \
    "$file"
done
