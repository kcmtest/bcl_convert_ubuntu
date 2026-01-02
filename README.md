# Dockerized bcl-convert (RPM → DEB)

This repository provides a **Dockerized setup to run Illumina `bcl-convert`** on Ubuntu by converting the official RPM package into a DEB package using `alien`.

This container is ideal for:
- Running **bcl-convert** on Ubuntu/Debian systems.
- Reproducible and portable BCL-to-FASTQ conversion workflows.

# BCL Convert Doker

Download the latest version of bcl-convert from https://emea.support.illumina.com/sequencing/sequencing_software/bcl-convert/downloads.html

Build the image

```bash
docker build . -t bcl-convert:latest -t bcl-convert:4.2.7
```
