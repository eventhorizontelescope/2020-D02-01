# EHT 2017 Calibration Metadata

**Authors:** The Event Horizon Telescope Collaboration et al.

**Date:** April 23, 2020

**Primary Reference:** [The Event Horizon Telescope Collaboration, et al. 2019c, ApJL, 875, L3 (M87 Paper III)](https://doi.org/10.3847/2041-8213/ab0c57)

**Data Product Code:** [2020-D02-01](https://eventhorizontelescope.org/for-astronomers/data)

**Brief Description:**

We release a collection of Metadata to accompany EHT Observations taken in
April 2017. This includes a priori estimates of station sensitivity for all EHT
2017 scans in ANTAB format, as well as control codes for configuring and
reducing EHT data in the CASA and HOPS radio interferometry software
environments. Metadata in this package can be used as auxiliary information to
process original EHT correlator output in FITS-IDI or Mark4 format. Data that
has already been reduced and calibrated are provided in accompanying EHT
publications, see for example EHTC 2019c (Paper III).

Further information about EHTC released data sets can be found at the URL,
 - https://eventhorizontelescope.org/for-astronomers/data

**Directory structure:**

```
2020-D02-01  # EHT 2017 Calibration Metadata
  |- antab   # ANTAB tables for a priori flux calibration
  |- casa    # CASA control files for fringe fitting and data reduction
  |- hops    # HOPS control files for fringe fitting and data reduction
```

**Station Code Table:**

| UVFITS Code | Station Name                  | Location |
| ----------- | ----------------------------- | -------- |
| AA          | ALMA                          | Chile    |
| AP          | APEX                          | Chile    |
| AZ          | Submillimeter Telescope       | Arizona  |
| JC          | James Clerk Maxwell Telescope | Hawai'i  |
| LM          | Large Millimeter Telescope    | Mexico   |
| PV          | IRAM                          | Spain    |
| SM          | Submillimeter Array           | Hawai'i  |
| SP          | South Pole Telescope          | S. Pole  |

**References:**

- [EHT Collaboration Data Portal Website](https://eventhorizontelescope.org/for-astronomers/data)
- [The Event Horizon Telescope Collaboration, et al. 2019a, ApJL, 875, L1 (M87 Paper I)](https://doi.org/10.3847/2041-8213/ab0ec7)
- [The Event Horizon Telescope Collaboration, et al. 2019b, ApJL, 875, L2 (M87 Paper II)](https://doi.org/10.3847/2041-8213/ab0c96)
- [The Event Horizon Telescope Collaboration, et al. 2019c, ApJL, 875, L3 (M87 Paper III)](https://doi.org/10.3847/2041-8213/ab0c57)
- [The Event Horizon Telescope Collaboration, et al. 2019d, ApJL, 875, L4 (M87 Paper IV)](https://doi.org/10.3847/2041-8213/ab0e85)
- [The Event Horizon Telescope Collaboration, et al. 2019e, ApJL, 875, L5 (M87 Paper V)](https://doi.org/10.3847/2041-8213/ab0f43)
- [The Event Horizon Telescope Collaboration, et al. 2019f, ApJL, 875, L6 (M87 Paper VI)](https://doi.org/10.3847/2041-8213/ab1141)
- [Blackburn, L., Chan, C.-k., Crew, G., et al. 2019, ApJ, 882, 23](https://ui.adsabs.harvard.edu/abs/2019ApJ...882...23B/abstract)
- [Janssen, M., Goddi, C., van Bemmel, I., et al. 2019, A&A 626, A75](https://ui.adsabs.harvard.edu/abs/2019A%26A...626A..75J/abstract)
- [Issaoun, S., Folkers, T., Blackburn, L., et al. 2017, EHT Memo 2017-CE-02](https://eventhorizontelescope.org/for-astronomers/memos)
- [Janssen, M., Blackburn, L., Issaoun, S., et al. 2019, EHT Memo 2019-CE-01](https://eventhorizontelescope.org/for-astronomers/memos)
- [Wielgus, M., Blackburn, L., Issaoun, S., et al. 2019, EHT Memo 2019-CE-02](https://eventhorizontelescope.org/for-astronomers/memos)
