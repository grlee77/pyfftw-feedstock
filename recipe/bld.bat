
@rem required as fftw3.h installed here
set C_INCLUDE_PATH="%PREFIX%\include"

%PYTHON% setup.py build
%PYTHON% setup.py install --single-version-externally-managed --record record.txt --optimize=1
if errorlevel 1 exit 1
