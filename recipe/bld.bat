
@rem required as fftw3.h installed here
set C_INCLUDE_PATH="%PREFIX%\include"

@rem tell pyFFTW to search for statically linked libraries
set STATIC_FFTW_DIR="%PREFIX%\lib"

@rem this variable tells pyfftw to search for fftw.lib rather than libfftw.lib
set PYFFTW_WIN_CONDAFORGE=1

@rem the following commented-out environment variable can be used to specify
@rem a library search location for dynamic libraries
@rem set PYFFTW_LIB_DIR="%LIBRARY_LIB%"

%PYTHON% -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
if errorlevel 1 exit 1