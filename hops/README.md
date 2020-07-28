# EHT 2017 Calibration Metadata: HOPS control files

**Primary Reference 1:** [The Event Horizon Telescope Collaboration, et al. 2019c, ApJL, 875, L3 (M87 Paper III)](https://doi.org/10.3847/2041-8213/ab0c57)
**Primary Reference 2:** [Blackburn, L., Chan, C.-k., Crew, G., et al. 2019, ApJ, 882, 23](https://ui.adsabs.harvard.edu/abs/2019ApJ...882...23B/abstract)

**Brief Description:**

We provide the following set of control files for use with the Haystack
Observatory Postprocessing System (HOPS) during the reduction of EHT data.
These files contain calibration parameters and search parameters that can be
used by HOPS fringe fitter ``fourfit`` to reduce EHT April 2017 correlator
output (2017-Rev7) in Mark4 format. Control files with fitted parameters were
originally generated using the EHT-HOPS pipeline (Blackburn et al, 2017), but
they can be passed directly to the HOPS ``fourfit`` task without use of the
pipeline.

The HOPS software suite may be downloaded at the following URL
 - [https://www.haystack.mit.edu/tech/vlbi/hops.html](https://www.haystack.mit.edu/tech/vlbi/hops.html)

**Directory structure:**

```
hops-(hi/lo)      # separate control file sets for high and low bands
  |- cf0_default  # default parameters: basic settings, windows, and a priori corrections
  |- cf1_flags_*  # manual time flags defining good time intervals to process
  |- cf2_pcal     # instrumental phase bandpass correction
  |- cf4_delays   # RCP-LCP instrumental delay correction
  |- cf5_close    # zero-width station-based delay and rate window set to fringe location
```

Control files are meant to be stacked in sequence and passed to ``fourfit``.
For example, to use control files up to and including phase bandpass
correction,
```
cat cf0* cf1* cf2* > cf_temp
fourfit -c cf_temp ..
```
If ``cf5_close`` is used, ``fourfit`` will be steered to a single (zero-width)
fringe solution which has been predetermined. Otherwise, ``fourfit`` will
search for a baseline-based multi-band delay, single-band delay, and delay-rate
within the search windows defined in ``cf0_default``.  Because rapid
atmospheric phase corrections are not included in these calibration tables,
there may be small residual delays and rates (in addition to the atmospheric
phase) present in the fringe fitted data.

Tools within the EHT-HOPS pipeline (Blackburn et al, 2019) can be used to
perform additional calibration tasks on HOPS output, and to convert HOPS native
output for fringe fitted data into UVFITS format.

**Station Code Table:**

| HOPS (Mark4) Code | UVFITS Code | Station Name                  | Location |
| ------------------| ----------- | ----------------------------- | -------- |
| A                 | AA          | ALMA                          | Chile    |
| X                 | AP          | APEX                          | Chile    |
| Z                 | AZ          | Submillimeter Telescope       | Arizona  |
| J                 | JC          | James Clerk Maxwell Telescope | Hawai'i  |
| L                 | LM          | Large Millimeter Telescope    | Mexico   |
| P                 | PV          | IRAM                          | Spain    |
| S                 | SM          | Submillimeter Array           | Hawai'i  |
| R                 | SR          | SMA Reference Antenna         | Hawai'i  |
| Y                 | SP          | South Pole Telescope          | S. Pole  |

