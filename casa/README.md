# EHT 2017 Calibration Metadata: CASA control files

**Primary References:**
- [The Event Horizon Telescope Collaboration, et al. 2019c, ApJL, 875, L3 (M87 Paper III)](https://doi.org/10.3847/2041-8213/ab0c57)
- [Janssen, M., Goddi, C., van Bemmel, I., et al. 2019, A&A, 626, A75](https://doi.org/10.1051/0004-6361/201935181)
- [rPICARD user guide](https://bitbucket.org/M_Janssen/picard/src/master/documentation/picard_documentation.pdf)

**Software Packages:**
- [Common Astronomy Software Applications (CASA)](https://casa.nrao.edu)
- [rPICARD CASA calibration pipeline](https://bitbucket.org/M_Janssen/picard)
- [casaeht driver scripts and control files for rPICARD](https://bitbucket.org/M_Janssen/casaeht)
- [Self-contained docker images with CASA, rPICARD, and casaeht](https://hub.docker.com/r/mjanssen2308/casavlbi_ehtproduction)

**Brief Description:**

We provide a set of control files that can be used for the reduction of
the 2017-Rev7 EHT correlator output in FITS-IDI format with CASA.
These are the control files that were used for the production of the verified
ER6 data set with rPICARD v3.13.1 and the
30e6ca14fb50275013c668285a3b476f9bc85436_91da63236db34f3a31b5309b18ac159128f28a35
Docker image. The casaeht repository will point to the latest versions of
processing software, control files, and Docker images.

**Directory structure:**

```
flagfiles                      # Flagging files to excise known bad data pre-calibration.
  |- (hi/lo).flags             # Flagging instructions for hi and lo band data.
  |- post_production_flagging  # Flags for specific tracks and bands to be applied post-calibration.
config                         # rPICARD configuration files.
  |- eht.mounttypes            # Used to set the correct station mounts.
  |- input                     # Standard set of rPICARD input files.
    |- constants.inp           # Defines pipeline constants.
    |- flagging.inp            # Defines flagging procedures.
    |- array_finetune.inp      # Defines fine-tuning options for the data processing.
    |- array.inp               # Defines EHT-specific input.
    |- track*.inp              # Defines set of sources and their intent for each 2017 EHT track.
run_script.sh                  # Driver script for a Docker-based processing of a specific track/band.
```

Control files for a specific track and band (e.g., lo.flags, trackA.inp, eht.mounttypes,
constants.inp, flagging.inp, ...) are to be placed in a working directory for the
data processing and rPICARD will make use of them. Alternatively, the provided run_script.sh
or process_eht executable from the casaeht repository can be used to select the correct
control files and run rPICARD.

The pipeline will iteratively solve for fringes and correct for instrumental and
atmospheric effects from scratch. The calibrated data is made available in
the CASA MeasurementSet and AIPS UVFITS formats.

**Station Code Table:**

| Station Code | Station Name                  | Location |
| -----------  | ----------------------------- | -------- |
| AA           | ALMA                          | Chile    |
| AP           | APEX                          | Chile    |
| AZ           | Submillimeter Telescope       | Arizona  |
| JC           | James Clerk Maxwell Telescope | Hawai'i  |
| LM           | Large Millimeter Telescope    | Mexico   |
| PV           | IRAM30m                       | Spain    |
| SM           | Submillimeter Array           | Hawai'i  |
| SR           | SMA Reference Antenna         | Hawai'i  |
| SP           | South Pole Telescope          | S. Pole  |
