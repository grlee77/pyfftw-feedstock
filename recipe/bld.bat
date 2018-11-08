
@rem required as fftw3.h installed here
set C_INCLUDE_PATH="%PREFIX%\include"

@rem tell pyFFTW to search for statically linked libraries
set STATIC_FFTW_DIR="%LIBRARY_LIB%"

@rem this variable tells pyfftw to search for fftw.lib rather than libfftw.lib
set PYFFTW_WIN_CONDAFORGE=1

@rem the following commented-out environment variable can be used to specify
@rem a library search location for dynamic libraries
@rem set PYFFTW_LIB_DIR="%LIBRARY_LIB%"

%PYTHON% setup.py build
%PYTHON% setup.py install --single-version-externally-managed --record record.txt --optimize=1
if errorlevel 1 exit 1