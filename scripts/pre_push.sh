python -m flake8 render_swagger.py tests
python -m coverage run --branch -m unittest tests && python -m coverage html && open -a "Google Chrome" htmlcov/index.html 