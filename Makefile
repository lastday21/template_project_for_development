init:
	python -m pip install -U pip
	python -m pip install -r requirements.txt
	python -m pip install -r requirements-dev.txt
	pre-commit install --hook-type pre-push

lint:
	\tpython -m ruff check .
	\tpython -m ruff format --check .
	\tpython -m mypy --config-file pyproject.toml .

test:
	\tpython -m pytest -m "not integration"

test-integration:
	\tpython -m pytest -m "integration"
