.PHONY: typehint test lint checklist

typehint:
mypy src/ tests/

test:
pytest tests/

check:
isort --check-only src/ tests/
black -S --check src/ tests/

format:
isort src/ tests/
black -S src/ tests/
pylint src/ tests/

checklist:
lint typehint test
