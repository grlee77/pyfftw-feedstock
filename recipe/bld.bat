
@rem required as fftw3.h installed here
set PYFFTW_INCLUDE=%LIBRARY_INC%

@rem tell pyFFTW to search for statically linked libraries
set STATIC_FFTW_DIR=%LIBRARY_LIB%

@rem this variable tells pyfftw to search for fftw.lib rather than libfftw.lib
set PYFFTW_WIN_CONDAFORGE=1

@rem the following commented-out environment variable can be used to specify
@rem a library search location for dynamic libraries
@rem set PYFFTW_LIB_DIR="%LIBRARY_BIN%"

@rem python setup.py build_ext -n -IF:\Miniconda3\conda-bld\pyfftw_1541828673207\_h_env\Library\include
%PYTHON% -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
if errorlevel 1 exit 1