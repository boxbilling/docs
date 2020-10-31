FROM sphinxdoc/sphinx

WORKDIR .
ADD Makefile .
ADD requirements.txt .
ADD en/ en/
RUN python3 -m pip install --no-cache-dir -U pip
RUN pip3 install -r requirements.txt
RUN ls -la
RUN ls -la en
RUN make html