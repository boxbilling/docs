FROM sphinxdoc/sphinx

WORKDIR .
ADD Makefile .
ADD requirements.txt .
ADD docs/ docs/
RUN python3 -m pip install --no-cache-dir -U pip
RUN pip3 install -r requirements.txt
RUN make html