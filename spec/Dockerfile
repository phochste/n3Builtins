# Use a slim Python image for efficiency
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Install Python packages
# Removed 'notebook' since you are running a script directly
RUN pip install --no-cache-dir \
    pandas \
    sparql-dataframe \
    urllib3

COPY gen_bs.sh .

RUN chmod +x gen_bs.sh

CMD ["./gen_bs.sh"]