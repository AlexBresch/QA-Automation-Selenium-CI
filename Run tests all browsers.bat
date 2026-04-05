chcp 1252
pytest --capture=no --log-cli-level=WARNING --tb=short --browser=chrome .\\Tests\test_Kjell.py
pytest --capture=no --log-cli-level=WARNING --tb=short --browser=firefox .\\Tests\test_Kjell.py
pytest --capture=no --log-cli-level=WARNING --tb=short --browser=edge .\\Tests\test_Kjell.py
@echo Tests done!
pause
